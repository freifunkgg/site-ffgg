# site-ffgg 'experimental' 


# Eine eigene Groß-Gerau Freifunkfirmware bauen

---

## Beispiel anhand der Groß-Gerauer Experimental-Firmware

    
Wenn Du Dir z.B. eine eigene **'Experimental'**-Firmware für das Groß-Gerauer Freifunk-Netz selber bauen möchtest, dann gehe wie folgt vor:

1) Aktuell (Stand 05/2020) basiert die Experimental-Firmware-Konfiguration auf dem Gluon-Framework v2020.1.2. Daher evtl. etwas einlesen -> https://gluon.readthedocs.io/en/v2020.1.2

2) Eine Linux-Build-Maschine bereitstellen, möglichst mit Debian. Daran denken, dass ein Build für **ein** Hardware-Target bis zu 15 GByte freien Speicher auf dem Datenträger der Build-Maschine benötigt. Sollen **alle** Hardware-Targets gebaut werden, so werden ca. 140 GB benötigt (Stand 05/2020).

3) Alle Dependencies aus o.g. Gluon-Dokument müssen auf der Build-Maschine installiert sein.  
Unter Debian oder Ubuntu sollte folgendes ausreichen (Stand 05/2020):
```
   sudo apt install git subversion python build-essential gawk unzip libncurses5-dev zlib1g-dev libssl-dev wget time
```

4) Clonen des Gluon '2020.1.x' Branches in das Verzeichnis ./gluon :

```
   git clone https://github.com/freifunk-gluon/gluon.git -b v2020.1.x gluon
```

5) Clonen der Groß-Gerauer Site-Konfiguration aus dem 'experimental' Branch in das Verzeichnis ./gluon/site

```
   cd gluon
   git clone https://github.com/freifunkgg/site-ffgg -b experimental site 
```

6) Ggf. in der Datei **site.mk** etwas rumschrauben

   ```
   cd site
   nano site.mk
   cd ..
   ```

7a)
Aktuell müssen leider noch einige Patches eingepflegt werden. Siehe https://github.com/freifunkgg/site-ffgg/tree/experimental/patches

``` 
   patch -N -p1 -r - -i ./site/patches/0001-add-gluon-geolocator.patch
   patch -N -p1 -r - -i ./site/patches/0002-ffnw-config-migration-from-gluon-node-info-to-geoloc.patch
   patch -N -p1 -r - -i ./site/patches/0004-hoodselector-to-domain-migration.patch
   patch -N -p1 -r - -i ./site/patches/0005-added-TP-Link-TL-WR841ND-N-Devices-for-8M-and-16M-Variants.patch
```

7b) Jetzt noch veranlassen, dass alle notwendigen Source-Packete geholt werden (OpenWrt, Groß-Gerauer Packages etc.)


```
   make update
```

7c) Und jetzt noch einen Patch durchführen

```
   patch -N -p1 -r - -i ./site/patches/0006-Fix-outdoor-mode-in-combination-with-preserve_channels.patch.after_make_update
   
```

8) Es gibt mehrere Hardware-Targets: 

   * ar71xx-generic
   * ar71xx-tiny
   * ar71xx-nand
   * ath79-generic
   * brcm2708-bcm2708
   * brcm2708-bcm2709
   * ipq40xx-generic
   * ipq806x-generic
   * lantiq-xrx200
   * lantiq-xway
   * mpc85xx-generic
   * mpc85xx-p1020
   * ramips-mt7620
   * ramips-mt7621
   * ramips-mt76x8
   * ramips-rt305x
   * sunxi-cortexa7
   * x86-generic
   * x86-geode
   * x86-64

9) Den Bau-Prozess anschmeissen für z.B. ar71xx-generic Hardware-Targets

```
   make GLUON_TARGET=ar71xx-generic -j4
```

   * `-j4` bedeutet, es werden bis zu vier Make-Threads verwendet.<br> 

10)
Sollte es Problemen geben, dann einfach einen Build mit ausführlicheren Informationen (`V=s`) durchführen. Dazu darf aber nur ein Make-Thread (`-j1`) verwendet werden.

```
   make GLUON_TARGET=ar71xx-generic -j1 V=s
```

11) Wenn alles gut ging, dann findest Du nach ca. 30-120 Minuten im Verzeichnis **./output** die Target-Binaries deiner eigenen Groß-Gerauer 'Homebrew' Firmware.
