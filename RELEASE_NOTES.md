# Groß-Gerau Freifunk-Firmware Experimental
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

