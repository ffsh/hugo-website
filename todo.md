# Todo for Hugo Website Project

This is a todo file for the Hugo website project.

- [ ] Review and update content for the main Hugo website.
- [X] Add content to content/karte/karte.md
- [X] Integrate FAQ into Über uns page.
- [ ] Mitmachen should contain Downloads and Hardware and be more friendly to new people.
- [X] Statistiken integrate into new Karte page
- [ ] Post about replacing old routers since they are no longer supported.
- [ ] Post about the changes to ansible and other things

```markdown
Title: Hardware-Frühjahrsputz: Warum alte 2021er Knoten ein Sicherheitsrisiko sind (und was hilft)

Moin zusammen,

unser Freifunk-Netzwerk in Südholstein läuft stabil, aber im Hintergrund hat sich die Technik stark weiterentwickelt. Wenn du einen Knoten bei dir zu Hause betreibst, wirf bitte kurz einen Blick auf deine Firmware-Version.

Wir sehen auf der Karte immer noch einige Router, die seit 2021 kein Update mehr erhalten haben. Was im ersten Moment nach "läuft doch noch" klingt, bringt leider zwei konkrete Probleme mit sich:
1. Dein privates Heimnetzwerk (LAN-Sicherheit)

Ein Freifunk-Router wird in der Regel direkt an deinen privaten Internet-Router (z.B. deine Fritz!Box) angeschlossen. Läuft auf dem Freifunk-Gerät eine uralte Firmware, fehlen jahrelange Sicherheitsupdates von OpenWrt und Gluon. Ein veralteter Knoten stellt damit ein vermeidbares Sicherheitsrisiko in deinem eigenen Heimnetz dar.
2. Warum alte Router keine Updates mehr bekommen

Gluon ist in den letzten Jahren moderner, aber auch anspruchsvoller geworden. Geräte mit weniger als 16 MB Flash-Speicher oder 64 MB RAM (wie viele alte TP-Link-Klassiker) können moderne Updates technisch schlicht nicht mehr speichern oder verarbeiten. Sie hängen dauerhaft in der Vergangenheit fest.
Was du jetzt tun kannst:

    Prüfen: Schau auf unserer neuen Knotenkarte nach deinem Router und prüfe die installierte Version.

    Updaten: Wenn dein Gerät noch unterstützt wird, erstelle dir über unseren Installer die passende aktuelle Firmware.

    Ersetzen: Wenn dein Gerät veraltet ist, lohnt sich der Umstieg auf ein modernes, zukunftssicheres Modell (z.B. Geräte mit Wi-Fi 6 oder ausreichend Speicher wie der Xiaomi AX3000T oder gebrauchte Klassiker mit min. 128 MB RAM).

Du bist dir unsicher, welches Modell passt oder brauchst Hilfe beim Flashen? Komm einfach in unseren Matrix-Kanal oder schreib uns direkt hier auf Mastodon – wir helfen dir gerne weiter!
```
