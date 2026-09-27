---
categories:
  - entwicklung
date: "2018-05-22T16:48:25+00:00"
summary: |-
tags:
  - entwicklung
  - firmware
  - gluon
title: Das site Repository
---
Die Firmware unserer Community basiert auf gluon einer Firmware für Mesh-Netzwerke, diese basiert wiederum auf [LEDE](https://de.wikipedia.org/wiki/LEDE_(Linux-Distribution)) bzw [OpenWrt](https://de.wikipedia.org/wiki/OpenWrt).
Damit wir gluon in unserer Community einsetzen können, müssen wir eine eigene Konfiguration pflegen. Diese Konfiguration wird site config genannt.

Struktur des site Repository.

```
site/
├── build.py
├── CHANGELOG.md
├── domains
│   ├── ffod.conf
│   ├── ffrz.conf
│   └── ffsh.conf
├── gluon
│   ├── ...
├── i18n
│   ├── de.po
│   ├── en.po
│   ├── fr.po
│   └── gluon-site.pot
├── modules
├── README.md
├── release.json
├── site.conf
└── site.mk

```

#### Buildscript

Das Buildscript `build.py` hilft beim automatisierten bauen (kompilieren) der Firmware. Es kann jedoch auch ganz normal in der Kommandozeile verwendet werden. Die Benutzung wird in der [README](https://github.com/ffsh/site/blob/dev/README.md) im site Reposiotry auf GitHub erklärt.

#### Changelog

Im Changelog sollen alle wesentlichen Änderungen an der Firmware festgehalten werden.

#### domains

In diesem Verzeichnis liegen die Konfigurationen für die Domains, bei uns sind dass:
Freifunk Stormarn, Freifunk Lauenburg, Freifunk Südholstein
Domains sind dazu gedacht ein Freifunknetzwerk zu partitionieren, wir nutzen es jedoch nur für verschiedene SSIDs in der selben Firmware.

#### gluon

Gluon ist in unser site Repository als [Submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) eingebunden, dadurch können wir eine bestimmte Version von Gluon mit einer bestimmten Version des site Repository verbinden.

#### i18n

In diesem Verzeichnis findest du die (aktuell) zwei bis drei unterstützten Sprachen (Deutsch, Englisch, (Französisch)) für den Konfigurationsmodus. Woher die Abkürzung i18n kommt kannst du auf [Wikipedia](https://de.wikipedia.org/wiki/Internationalisierung_(Softwareentwicklung)) nachlesen.

#### modules

In dieser Datei werden weitere Module hinterlegt die nicht direkt zu gluon gehören. Hier ist bei uns der ssid-changer eingetragen welcher die SSID ändert sobald der Knoten keine Verbindung mehr hat.

#### release.json

Diese Datei wird vom build-script verwendet um bisher nur zwei Variablen zu setzen.

- Gluon Version
- Update [Priorität](http://gluon.readthedocs.io/en/v2017.1.7/features/autoupdater.html)

Wird sie in der Zukunft eventuell erweitern.

#### site.conf

Hier finden sich alle Einstellungen, die nicht Domain bezogen sind.
Hier finden sich unter anderem die Pfade zu den Firmware Updates.

#### site.mk

In dieser Datei wird definiert welche Module in die Firmware-Images integriert werden sollen.

Ich hoffe dieser Beitrag hilft ein wenig dabei die grobe Struktur zu verstehen. Demnächst werde ich einen Beitrag dazu veröffentlichen wie du die Firmware selbst bauen/kompilieren kannst.
