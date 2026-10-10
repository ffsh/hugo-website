---
categories:
  - ffsh-blog
date: "2019-01-21T16:58:51+00:00"
summary: Der monatliche Blogbeitrag von Freifunk Südholstein.{{ double-space-with-newline }}Das Jahr 2019 hat begonnen und es gibt bereits ein paar Neuerungen. Wir arbeiten weiter an unserer Infrastruktur und verbessern die Dokumentation. Außerdem gab es bereits das erste Firmware-Update.
tags:
  - "2019"
  - januar
  - südholstein
title: 'FFSH #5: Januar 2019'
authors:
  - Grotax
---
Der monatliche Blogbeitrag von Freifunk Südholstein.  
Das Jahr 2019 hat begonnen und es gibt bereits ein paar Neuerungen. Wir arbeiten weiter an unserer Infrastruktur und verbessern die Dokumentation. Außerdem gab es bereits das erste Firmware-Update.

## Gemeinnützigkeit

Die Gemeinnützigkeit für Freifunk-Initiativen verzögert sich weiter, da die Bundesregierung viele Themen, welche die Gemeinnützigkeit betreffen, in eine Gesetzesänderung zusammenfassen will.

## Gateway Updates

Auf den Gateways wurde eine neue Version von [Batman](https://www.open-mesh.org/projects/open-mesh/wiki) installiert. Alle Gateways setzen jetzt 2018.4 und kein [debugfs](https://de.wikipedia.org/wiki/Debugfs) mehr ein.

## Firmware: 2018.2 - 12.01.2019

Wir haben die Firmware der Knoten auf 2018.2 aktualisiert und sind damit wieder auf dem aktuellsten Stand. Außerdem kann man nun im Experten-Modus konfigurieren ob der VPN-Tunnel verschlüsselt wird oder nicht.

{{< figure src="/media/posts/2019/ffsh-5-januar-2019/client-drop.webp" alt="" caption="" >}}

Nach dem Update auf 2018.2 konnte man in unseren Statistiken einen starken Abfall der Clients beobachten. Clients sind in diesem Fall eure Smartphones, Notebooks, etc. die unser Freifunk-Netzwerk benutzen.

Dieser Schwund ist jedoch kein Grund zur Aufregung, vielmehr hat sich die Art wie die Knoten die Anzahl ihrer Clients bestimmen, geändert. Ein Client der für 60 sek. Inaktiv ist, wird nicht mehr in dieser Statistik auftauchen. Bei der alten Methode blieben die Clients viel länger in der Statistik, auch wenn sie nicht mehr aktiv waren.

## Treffen Januar 2019  

Das Treffen im Januar fand in Bad Oldesloe statt. Themen waren wieder die Versorgung von Flüchtlingsunterkünften, Vereinsgründung und Gemeinnützigkeit.

Außerdem wurde über Hardware und notwendige Veränderungen an unserer Infrastruktur gesprochen.
