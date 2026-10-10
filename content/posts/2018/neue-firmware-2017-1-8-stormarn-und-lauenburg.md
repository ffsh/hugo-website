---
categories:
  - firmware
date: "2018-06-22T13:16:34+00:00"
summary: Heute haben wir die Version 2017.1.8 zum **testen** veröffentlicht, diese bringt einige Verbesserungen vor dem nächsten großen Update auf 2018.1. Sobald die Firmware auch im stabilen Kanal verfügbar ist mache ich eine kleine Ankündigung.{{ double-space-with-newline }}
title: Neue Firmware 2017.1.8 (Stormarn und Lauenburg)
authors:
  - Grotax
---
Heute haben wir die Version 2017.1.8 zum **testen** veröffentlicht, diese bringt einige Verbesserungen vor dem nächsten großen Update auf 2018.1. Sobald die Firmware auch im stabilen Kanal verfügbar ist mache ich eine kleine Ankündigung.  

- Neue Schlüssel für Beste, Krummbach und Hopfenbach
- Neue Geräteunterstützung:
  - GL.iNet GL-AR750
  - TP-Link Archer C7 v4
  - Ubiquiti UniFi AC Mesh
  - TP-Link TL-WR940N v6
- Einige Fehlerbhebungen für batman
  - diese sollten unnötige Last aus unserem Netzwerk entfernen
- Update des Kernels auf 4.4.129
- Neue Texte für das Kontaktfeld (im Konfigurationsmodus)

{{< figure src="/media/posts/2018/neue-firmware-2017-1-8-stormarn-und-lauenburg/Auswahl_021.webp" alt="" caption="" >}}

#### Neue Schlüssel

Wir haben uns dafür entschieden einen Schlüsseltausch auf allen Gateways durchzuführen.  
Dieser Vorgang erfolgt in zwei Schritten.

1. Nur drei Gateways erhalten neue Schlüssel.
1. Ein paar Wochen später erhalten auch die anderen neue Schlüssel.

**Was bedeutet das?**

- Solltest du deinen Freifunk Knoten nicht auf 2017.1.8 aktualisieren so wird er sich zunächst nicht mehr mit den drei Gateways verbinden können.
- Nach dem zweiten Schritt wird sich dein Freifunk Knoten nicht mehr mit unserem Netzwerk verbinden können, du musst ihn dann manuell aktualisieren.
- Dein Knoten wird sich weiterhin über andere Knoten mit denen er per W/LAN meshen kann in unser Freifunknetzwerk gelangen. Über das Internet geht es nach dem zweiten Schritt nur noch mit der aktuellen Firmware.

**Warum der Wechsel?**  
Wir sind eine kleine Freifunk Community und können nur eine kleine Zahl von Firmware Versionen unterstützen. Um uns die Arbeit zu erleichtern werden wir Knoten mit alter Firmware ausschließen damit diese nicht zu einem Problem werden. Wir werden die Situation weiter beobachten und vor dem zweiten Schritt eine weitere Ankündigung machen. Wenn Du noch Fragen hast kannst Du dich an uns per [E-Mail](https://www.freifunk-suedholstein.de/kontakt/) wenden.
