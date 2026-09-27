---
categories:
  - entwicklung
date: "2018-05-10T11:30:16+00:00"
summary: |-
tags:
  - firmware
  - gluon
  - jenkins
title: Firmware bauen mit Jenkins
---
Jenkins ist eine in Java geschriebene Software für automatisiertes compilieren von Software.
Bisher wurde die Firmware manuell in der Konsole gebaut. Ab sofort werden die Firmware Images von Jenkins gebaut. Daraus ergeben sich folgende Änderungen:

- Jenkins baut die Firmware sobald es Änderungen am Firmware Repository gab
- Jeder Build bekommt eine Build Number
- Die Firmware wird von [Jenkins](https://jenkins.grotax.de) signiert und [vor-veröffentlicht](https://firmware.grotax.de)

#### Automatisiertes Bauen

Die Firmware Pflegen wir in einem [Git Repository](https://github.com/ffsh/site) auf [GitHub](https://github.com/ffsh/site). Genau genommen pflegen wir nur Konfiguration für unsere Community und benutzen gluon als Basis. Bei einer Änderung am Repository wird Jenkins durch GitHub informiert und prüft ob ein neuer Build notwendig ist. Das bauen der Firmware muss also nicht mehr Manuell angestoßen werden.

#### Der Dateiname

Die Dateien der Firmware werden nach einem bestimmten Muster benannt das neue Muster sieht so aus:
`gluon-{Kürzel}-{gluon-version}-{Kanal}-{build-number}-{Name vom Gerät}`OptionWerteKürzelffod, ffrz, ffshgluon-version2017.1.6, 2017.1.7, 2018.1Kanal(dev), testing, rc, stableBuild Number1, 2, 3, 4, ...

#### Das Kürzel

Das Kürzel steht für die Community:
ffodFreifunk StormarnffrzFreifunk LauenburgffshFreifunk Südholstein

#### Die Gluon Verion

Anders als andere Communitys haben wir keine eigene Versionsnummer die Gluon Version entspricht der _gluon-version_ aus der Tabelle.

#### Der Kanal

Der Kanal oft auch Branch oder Zweig genannt beschreibt im wesentlichen den zustand und die zu erwartende Stabilität der Firmware.
devNur für Leute mit Lötkolben und erweiterten KenntnissentestingFür mutige die immer die neusten Funktionen wollenrcFür alle die uns beim testen der Firmware vor der Veröffentlichung helfen wollenstable **(empfohlen)**Für alle die einen stabilen Knoten wollen und sich nicht darum kümmern wollen

#### Die Build Number

Die Build Number wird von Jenkins erzeugt und ist eine natürliche Zahl, die einfach vor jedem Build um eins hochgezählt wird. Damit lassen sich Firmware Dateien auf einen Blick unterscheiden und man weiß welche Datei neuer ist. Auch die Knoten entscheiden anhand des Namens ob ein update nötig ist oder nicht. Deshalb wird es mit der Version 2018.1 noch eine Änderung geben. Build Number und Kanal tauschen die Plätze im Namen.
`gluon-{Kürzel}-{gluon-version}-{build-number}-{Kanal}`

> _Da Stormarn und Lauenburg unterschiedliche Firmware Versionen bekommen, haben sie unterschiedliche Build Zahlen._

##### Warum?

Meiner Meinung nach ist es wichtiger die aktuelle Version zu haben als auf welchem Branch man ist. Bisher wäre die Reihenfolge:
`dev<rc<stable<testing`
Die Knoten würden also bei gleicher gluon-version immer testing bevorzugen eine rückkehr zu stable wäre erst mit dem nächsten gluon Release möglich.
In Zukunft soll die Build Number wichtiger sein als der Branch wenn es einen neueren Build gibt wechselt der Knoten. Das ist keine perfekte Lösung aber mehr ist aktuell nicht möglich.

#### Signatur von Jenkins

Jenkins signiert jede Firmware mit seinem eigenen Schlüssel dieser ist aber nur für den _dev_ Kanal gültig.
