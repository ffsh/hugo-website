---
categories:
  - ffsh-blog
date: "2020-05-08T10:53:53+00:00"
tags:
  - "2020"
  - gateways
  - mai
  - treffen
title: 'FFSH #15 Mai 2020'
authors:
  - Grotax
---
> Der Mai ist gekommen, die Bäume schlagen aus, da bleibe, wer Lust hat, mit Sorgen zuhaus; wie die Wolken dort wandern am himmlischen Zelt, so steht auch mir der Sinn in die weite, weite Welt.
>
> Emanuel Geibel, 1841, bei Schloss Eschenberg

## Digitale Treffen

Auch im Mai hatten wir wieder ein digitales Treffen, auf Grund des Coronavirus verzichten wir auf unsere realen Treffen. Auch diesmal konnten wir dafür auf [meet.lug-stormarn.de](https://meet.lug-stormarn.de/) zurückgreifen, das von der [Linux User Group Stormarn](https://lug-stormarn.de/) betrieben wird, an dieser Stelle vielen Dank dafür.

Da die Treffen so gut angenommen werden, kann ich mir gut vorstellen auch nach Corona weiterhin digitale Treffen zu veranstalten.

## Neue Gateways

Wir haben zwei neue Gateways dazu bekommen. Diese werden nun bei einem anderen Anbieter gehostet um eine bessere Ausfallwahrscheinlichkeit zu erreichen allerdings muss man sagen unser Netz läuft sehr stabil die Komponenten haben sich gut eingespielt und das stetige tüfteln, updaten, nachdenken zahlt sich aus.

Vielleicht erscheint noch ein Erfahrungsbericht unseres neuen Gateway Betreibers. : )

## Freifunk Radio

Manche von euch kennen vielleicht das Freifunk Radio, dabei handelt es sich um eine kleine Radiosendung und einen Podcast, der etwa einmal im Monat erscheint, dieses mal war auch [Kai vom Freifunk Südholstein](https://radio.freifunk.net/2020/05/12/von-nord-bis-sued/) dabei, hört doch mal rein.

## Firmware 2020.1.2

Aktuell teste ich die Firmware basierend auf Gluon 2020.1.2 dabei habe ich vor allem festgestellt, dass ich mit dem Prozess des bauen der Firmware nicht zufrieden bin und versuche gerade alternativen zu erörtern.  
Wenn ich dabei zu einem befriedigenden Ergebnis komme, werde ich es hier auf jeden Fall vorstellen.

Ich werde trotzdem versuchen die Firmware in den nächsten Tagen zu veröffentlichen.  
Folgende Geräte werden in dieser Version nicht mehr unterstützt:

- AVM FRITZ!Box 7320
- AVM FRITZ!Box 7330
- AVM FRITZ!Box 7330 SL

Gerade bei der 7320 und der 7330 SL ist das Schade, da es sich dabei um 1&1 gebrandete Fritzboxen (die in schwarz) handelt und diese teilweise für wenig Geld gebraucht zu haben sind. Da es sich um einen Bug im Treiber handelt werden die Geräte auch erst mal nicht zurück kommen [GitHub Issue](https://github.com/freifunk-gluon/gluon/issues/1943).

Weiterhin gibt es ein paar Bugfixes, insbesondere wurde ein Fehler behoben, der zu regelmäßigen Neustarts einiger Geräte führte.
