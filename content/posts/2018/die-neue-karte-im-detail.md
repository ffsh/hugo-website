---
categories:
  - allgemein
date: "2018-05-15T09:10:23+00:00"
summary: Seit einiger Zeit haben wir eine neue Karte für unser Community, diese zeigt alle Knoten in Freifunk-Lauenburg, -Stormarn und auch -Südholstein an.{{ double-space-with-newline }}Die neue Karte verwendet gegenüber der alten Karte andere und neuere Software.{{ double-space-with-newline }}In diesem Beitrag will ich die einzelnen Komponenten erklären.{{ double-space-with-newline }}
tags:
  - karte
  - südholstein
title: Die neue Karte im Detail
---
Seit einiger Zeit haben wir eine neue Karte für unser Community, diese zeigt alle Knoten in Freifunk-Lauenburg, -Stormarn und auch -Südholstein an.  
Die neue Karte verwendet gegenüber der alten Karte andere und neuere Software.  
In diesem Beitrag will ich die einzelnen Komponenten erklären.  

#### Meshviewer (Freifunk Regensburg)

Der [Meshviewer](https://github.com/ffrgb/meshviewer) wird vom Freifunk Regensburg entwickelt.

In die neue Mesh-Ansicht wurde technisch komplett überarbeitet. Auch die Oberfläche hat sich stark verändert.  

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/Auswahl%5F030.png" alt="" caption="" >}}

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/meshviewer%5Fsymbole.png" alt="" caption="" >}}

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/link-quality.png" alt="" caption="" >}}

Das Design hat sich grundsätzlich verändert ich will hier einige punkte hervorheben. Knoten haben nun runde Punkte, die Gateways haben Quadrate. Dünne Linien stehen für VPN Verbindungen, die dickeren stehen für LAN/WLAN. Die Darstellung der Verbindungsqualität wurde verbessert es gibt sehr anschauliche Farbverläufe von rot (schlecht) bis grün (gut). Dabei wird sowohl die Maximale als auch die minimale Qualität dargestellt.

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/Auswahl%5F029.png" alt="" caption="" >}}

Über "Lokalisierung" kannst du deinen Standort für die Karte freigeben, wenn dein Browser diese Funktion unterstützt.  
Außerdem unterstützt die Karte mehrere Sprachen und erkennt auch die Sprache deines Browsers um automatisch umzuschalten du kannst sie aber auch selber oben links umschalten.

#### Tile Server

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/tile.png" alt="" caption="" >}}

Der Hintergrund der Karte besteht aus Kacheln (Tiles), diese werden einzeln von einem Server geladen. Den Hintergrund kannst du über die Schaltfläche unten rechts ändern. Aktuell bieten wir zwei verschiedene Hintergründe an.

- Freifunk Südholstein (Standard)
- Esri.WorldImagery (Satelliten/Luft-Bilder)

Wir betreiben keinen eigen Tile Server sondern nutzen die Tile Server von [openStreetMap](http://www.openstreetmap.org/about/) damit wir ihre Server etwas entlasten betreiben wir jedoch einen Cache welcher die Anfragen deines Browsers bedient. Dadurch entsteht für die openStreetMap Server weniger Verkehr.  
**Vorteile:**

- Aktuell durch schnelle Aktualisierung
- Kostenloses Gemeinschaftsprojekt
- einfache Wartung
- schnell duplizierbar

**Nachteile:**

- Keine Anpassungen am Stil
- Beschränkter Zoom

#### YANIC (Freifunk Bremen)

[YANIC](https://github.com/FreifunkBremen/yanic) ist ein Akronym für "Yet another node info collector". YANIC sammelt die Daten von den Knoten im Freifunk Netz und bereitet sie für die Karte auf. Die Daten findest du übrigens [hier](https://map.freifunk-suedholstein.de/data/).  
**respondd**  
Die Knoten stellen ihre Daten mit respondd zur Verfügung (früher wurde dies mit Alfred gemacht). Dieses Programm arbeitet effizienter als die alte Lösung und wird aktiv von der gluon Community gepflegt.

#### InfluxDB

InfluxDB ist eine Datenbank für Zeitreihen. Sie eignet sich besonders gut zum Aufzeichnen sich von variablen werten mit Zeitbezug. In dieser Datenbank werden die Daten der Knoten gespeichert.

#### Grafana

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/stats-1.png" alt="" caption="" >}}

{{< figure src="https://beta.freifunk-suedholstein.de/wp-content/uploads/2019/06/stats-2.png" alt="" caption="" >}}

[Grafana](https://map.freifunk-suedholstein.de/grafana) nutzen wir um aus den Daten, welche YANIC einsammelt, um Graphen zu generieren.  
Einige davon betten wir in der Karte eingebettet. Wir haben jedoch mehr Graphen und in Zukunft kommen sicher neue dazu. Mehr Graphen findest du [hier](https://www.freifunk-suedholstein.de/statistiken/).
