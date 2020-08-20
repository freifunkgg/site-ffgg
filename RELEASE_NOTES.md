# Groß-Gerau Freifunk-Firmware Experimental

### v0.0.6-exp-0809
- Erstellt am 9.8.2020
- Basis ist [Gluon v2020.2](https://gluon.readthedocs.io/en/latest/releases/v2020.2.html#)
- Anpassungen der [Site-Patches](https://gitea.indie-freifunk.net/oszilloskop/site-ffffm/src/branch/top/patches) an Gluon v2020.2
- Unterstützung neuer Router-Hardware
  - GL.iNet
     - GL-AR750S
  - TP-Link
     - CPE220 (v3)
  - EnGenius
     - ENS620EXT
  - Linksys
     - EA6350 (v3)
  - TP-Link
     - TD-W8970
  - NETGEAR
     - DGN3500B
  - Cudy
     - WR1000
  - x86-legacy
     - Devices older than the Pentium

#### Known Issues
- Ubiquiti EdgeRouter X und X-SFP Router können durch ein Sysupgrade, von Gluon v2019.x auf diese Gluon-Version, gebrickt werden (siehe: [Gluon-Issue #1937](https://github.com/freifunk-gluon/gluon/issues/1937)).

### v0.0.5-exp-0616
- Erstellt am 16.06.2020
- Basis ist [Gluon v2020.1.3](https://gluon.readthedocs.io/en/v2020.1.3/releases/v2020.1.3.html), plus Gluon Commits des [v2020.1.x-Branches](https://github.com/freifunk-gluon/gluon/commits/v2020.1.x) bis zum 13.06.2020
- Wiederholte Optimierungen am GG-Package '[cleanup-gluon-config](https://github.com/freifunkgg/packages-ffgg/tree/master/ffgg-cleanup-gluon-config)'

#### Known Issues
- Ubiquiti EdgeRouter X und X-SFP Router könen durch ein Sysupgrade, von Gluon v2019.x auf diese Gluon-Version, gebrickt werden (siehe: [Gluon-Issue #1937](https://github.com/freifunk-gluon/gluon/issues/1937)).
- Weitere Issues siehe u.a. [Sammel-Thread im Freifunk Forum](https://forum.freifunk.net/t/gluon-v2020-1-auffaelligkeiten/21839)

### v0.0.3-exp-0610
- Erstellt am 10.06.2020
- Basis ist [Gluon v2020.1.3](https://gluon.readthedocs.io/en/v2020.1.3/releases/v2020.1.3.html)
- Optimierungen GG-Package '[cleanup-gluon-config](https://github.com/freifunkgg/packages-ffgg/tree/master/ffgg-cleanup-gluon-config)'
- Unterstützung neuer Router-Hardware
  - AVM
     - FRITZ!Box 7312
     - FRITZ!Box 7320
     - FRITZ!Box 7330
     - FRITZ!Box 7330 SL
     - FRITZ!Box 7360 (v1, v2)
     - FRITZ!Box 7360 SL
     - FRITZ!Box 7362 SL
     - FRITZ!Box 7412
  - TP-Link
     - Archer C6 v2
     - Archer C2 (v1)
     - Archer C20 (v1)
     - Archer C20i
     - Archer C50 (v1)
     - TL-MR3020 (v3)
     - TP-Link TL-WA801ND (v5)
     - TP-Link TL-WR902AC (v3)
  - GL.iNet
     - GL-AR300M-Lite
     - VIXMINI
  - Netgear
     - R7800
     - EX6150 (v1)
     - R6220
  - Devolo 
     - WiFi pro 1200e
     - WiFi pro 1200i
     - WiFi pro 1750c
     - WiFi pro 1750e
     - WiFi pro 1750i
     - WiFi pro 1750x
  - OCEDO
     - Raccoon
     - Panda
  - Enterasys
     - WS-AP3710i
  - Xiaomi 
     - MiWifi Mini
- Entfernte Router-Hardware (die Firmware passt nicht mehr in den Flash-Speicher)
  - ALFA Network
     - Hornet-UB
     - Tube2H
     - N2
     - N5

#### Known Issues
- Ubiquiti EdgeRouter X und X-SFP Router könen durch ein Sysupgrade, von Gluon v2019.x auf diese Gluon-Version, gebrickt werden (siehe: [Gluon-Issue #1937](https://github.com/freifunk-gluon/gluon/issues/1937)).
- Weitere Issues siehe u.a. [Sammel-Thread im Freifunk Forum](https://forum.freifunk.net/t/gluon-v2020-1-auffaelligkeiten/21839)

### v0.0.2-exp-0608
- Erstellt am 08.06.2020
- Basis ist [Gluon v2020.1.2](https://gluon.readthedocs.io/en/v2020.1.2/releases/v2020.1.2.html)
- Optimierungen der Groß-Gerauer Hood-Geokoordinaten.
- Für Testzwecke und zur Migration von Fremd-Community-Knoten ist das GG-Package '[cleanup-gluon-config](https://github.com/freifunkgg/packages-ffgg/tree/master/ffgg-cleanup-gluon-config)' enthalten.

#### Known Issues
- Ubiquiti EdgeRouter X und X-SFP Router könen durch ein Sysupgrade, von Gluon v2019.x auf diese Gluon-Version, gebrickt werden (siehe: [Gluon-Issue #1937](https://github.com/freifunk-gluon/gluon/issues/1937)).
- Weitere Issues siehe u.a. [Sammel-Thread im Freifunk Forum](https://forum.freifunk.net/t/gluon-v2020-1-auffaelligkeiten/21839)


### v0.0.1-exp-0517
- Erstellt am 17.05.2020
- Basis ist [Gluon v2020.1.2](https://gluon.readthedocs.io/en/v2020.1.2/releases/v2020.1.2.html)
- Addons
  - Die Helper-Skripte 'nodeinfo' und 'meshinfo' sind enthalten.
  - Der 'Offline-SSID-Changer' ist eingebunden.
  - Auf Grund von Rückmeldungen ist 'ffgg-ath9k-broken-wifi-workaround' integriert.
  - Aus Stabilitätsgründen ist bei den meisten 4/32MB-Devices das Package 'zram-swap' enthalten.
  - Bei Routern mit ausreichend Flash-Speicher sind die Tools 'nano', 'joe', 'iperf3' und 'tcpdump' vorinstalliert.
  - Im Konfigmodus sind erweiterte Einstellung-Tabs enthalten (z.B. privates WiFi, Remote-Logging etc.).
  - Der 5GHz DFS-Outdoor-Modus ist standardmäßig deaktiviert. Opt-in im Konfigmodus ist jedoch möglich.
  - Es werden Images für aufgerüstete TL-WR841N/ND (v8-v11) mit 8 bzw. 16MB Flash-Speicher bereitgestellt.
  - Ein lokalisiertes SSH-Anmelde-Banner wird angezeigt.
  - Unabhängig vom aktuellen Zustand des Autoupdaters, wird dieser bei der Experimental Firmware automatisch aktiviert.

#### Known Issues
- Ubiquiti EdgeRouter X und X-SFP Router könen durch ein Sysupgrade, von Gluon v2019.x auf diese Gluon-Version, gebrickt werden (siehe: [Gluon-Issue #1937](https://github.com/freifunk-gluon/gluon/issues/1937)).
- Weitere Issues siehe u.a. [Sammel-Thread im Freifunk Forum](https://forum.freifunk.net/t/gluon-v2020-1-auffaelligkeiten/21839)

