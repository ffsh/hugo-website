---
categories:
  - firmware
date: "2018-05-08T16:23:45+00:00"
summary: |-
tags:
  - firmware
  - gluon
  - lauenburg
  - stormarn
title: Neue Firmware 2017.1.7 (Stormarn und Lauenburg)
---
Heute haben wir die Version 2017.1.7 veröffentlicht diese bringt folgende Änderungen mit sich:

- Alfred entfernt
- Trave hat neues Schlüsselpaar
- Neues Version Namensschema
- Updates für gluon

**Alfred**
Alfred ist ein Programm um Daten von den Knoten zu sammeln. Dies haben wir in der Vergangenheit dafür benutzt eine Karte für unsere Comunity bereit zu stellen.
Da die Pflege der alten Karten Software eingestellt wurde haben wir uns bereits vor einigen Wochen dazu entschieden eine neue Software zu verwenden.
Die neue Karte läuft nun und bringt einige Verbesserungen mit sich zudem wird die Software aktiv gepflegt und weiter entwickelt.
Der neue Dienst auf den Knoten heißt respondd und ist auf unseren Knoten bereits seit einigen Versionen installiert.
**Trave**
Nach dem der alte Betreiber von unserem Gateway Trave nicht mehr aktiv ist haben wir nun einen neuen Betreiber aus gründen der Sicherheit haben wir uns dazu entschlossen das Schlüsselpaar zu wechseln es kann deshalb in der Übergangsphase zu Verbindungsproblemen mit Trave kommen. Da wir jedoch 5 weitere Gateways haben sollte dies kein ernsthaftes Problem darstellen.
**Namensschema**
Außerdem gibt es ein neues Namensschema für die Firmware Version dies ergibt sich daraus das die Firmware mit Jenkins gebaut wird.
Der Name der Firmware setzt sich wie folgt zusammen:
`gluon-{Kürzel}-{gluon-version}-{kanal}-{build-number}`
bsp:
`gluon-ffod-2017.1.7-stable-42`
Auf der Karte wird dann
`2017.1.7-stable-42`
angezeigt.
Zu Jenkins und dem neuen Namen etc. werde ich mich bald noch mal äußern.
**Gluon**
Bei Gluon gab es einige Bug fixes alles eher kleinere Änderungen wer diese Nachlesen möchte kann dies [hier](https://gluon.readthedocs.io/en/v2017.1.x/releases/v2017.1.6.html) und [hier](https://gluon.readthedocs.io/en/v2017.1.x/releases/v2017.1.7.html) tun.
PS: 2017.1.6 haben wir Übersprungen weil es einen Fehler bei einigen Ubiquiti Geräten gab der in 2017.1.7 repariert wurde.
