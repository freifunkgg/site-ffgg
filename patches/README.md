## Lokale Site-Patches

### Anwendung
Die hier enthaltenen Patches sind so gestaltet, dass die Patch-Anwendungsaufrufe direkt im Gluon-Build-Ordner durchgeführt werden müssen.

- Patches mit der Endung `.patch` müssen **vor** dem Befehl

    make update
angewendet werden.


- Patches mit der Endung `.patch.after_make_update` müssen **nach** dem Befehl

    make update
angewendet werden.


### Durchführung 
Die hier enthaltenen Patches werden einzeln mittels der folgenden Befehlszeile direkt im Gluon-Build-Ordner angwendet:

    patch -N -p1 -r - -i ./site/patches/NameDesPatches.patch
