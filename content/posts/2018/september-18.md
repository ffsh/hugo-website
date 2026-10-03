---
categories:
  - ffsh-blog
date: "2018-09-27T10:24:22+00:00"
summary: |-
tags:
  - firmware
  - treffen
title: 'FFSH #1: September 18'
authors:
  - Grotax
---
Eine kleine Zusammenfassung des Monats September 18.

## Aktive Mitglieder

Im Vergleich zu anderen Gruppen, haben wir zwar eine relativ hohe Anzahl an aktiven Mitgliedern, dennoch besteht durchaus Wachstumspotential.  
Also rufe ich Dich hiermit dazu auf, zu einem unserer Treffen zu kommen.  
Unser Nächstes Treffen ist übrigens am 12. Oktober 2018 18:00 in Reinbek. Dort Treffen wir uns im [Vintage Café](https://www.freifunk-suedholstein.de/events/event/treffpunkt-reinbek-computertreff/https://www.freifunk-suedholstein.de/events/event/treffpunkt-reinbek-computertreff/). Also komm doch vorbei und bringe gerne jemanden mit. Jeder ist Willkommen und wir freuen uns über jeden Neuzugang.

### Freifunk-Knoten

Wir haben aktuell etwa 210 aktive Freifunk Knoten. Diese Konzentrieren sich jedoch sehr stark auf einzelne Punkte. Wir möchten gerne mehr Knoten an neuen Standorten. Wenn du jemanden kennst, der vielleicht einen Knoten aufstellen würde, dann frag ihn doch einfach mal.  

## Firmware & Gateways

### Firmware

Diesen Monat haben wir eine neue Firmware Version (basierend auf Gluon 2018.1.1) ausgerollt. Trotz kleinerer Probleme lief das Update größtenteils ohne Probleme durch.

Probleme gab es mit der Version 2018.1 da hier ein relativ komplizierter [Fehler](https://www.freifunk-suedholstein.de/allgemein/treffen-und-fimrware-update/) im Auto-Updater zum Vorschein trat. Da wir die Version nicht per Update verteilt hatten war die Anzahl der potentiell betroffen Knoten jedoch klein.  

#### Mesh-on-LAN/WAN

Ein weiteres Problem stellen alte Installation dar, die auf Mesh-on-LAN/WAN setzen da hier eine neue Technik zum Einsatz kommt ([VXLAN](https://gluon.readthedocs.io/en/v2018.1.1/features/wired-mesh.html)).  
Dadurch können Knoten mit 2018.1.1 nicht mehr mit 2017er Knoten kommunizieren. Während dies größtenteils keine Probleme verursacht. Kann es jedoch sein, dass einige Knoten abgeschnitten wurden.

Die neue Mesh-Technik bietet jedoch einen Vorteil sie verhindert, dass unterschiedliche Communities untereinander Meshen und somit potentielles Chaos verursachen.

Gluon bietet hier leider keine Möglichkeit die Knoten in einer "intelligenten" Reihenfolge zu aktualisieren.  
Solltest du einen oder mehrere Knoten haben die nun offline sind, dann hat dies vermutlich zur Ursache, dass sie keinen Weg in unser Freifunk Netzwerk finden.

**Lösung 1  
** Knoten mit Rechner verbinden (Konfigurationsmodus aktivieren) und passende [Firmware](/firmware) installieren.

**Lösung 2  
** Mesh-Netz im WLAN aktivieren, dass geht entweder über den Konfigurationsmodus oder per SSH (Funktioniert nur wenn andere Knoten in der Nähe über WLAN meshen) .   

Wenn du Fragen oder Probleme hast kannst du dich auch gerne bei uns [melden](https://www.freifunk-suedholstein.de/kontakt/). Sowie Fragen in unserer Gruppe auf [freitrix.de](https://webchat.freitrix.de/#/room/#ffsh:freitrix.de) oder in unserer [Telegram](https://t.me/freifunk_suedholstein) Gruppe stellen.  

### Gateways

{{< figure src="/media/posts/2018/september-18/gateways.webp" alt="" caption="" >}}

Am Montag dieser Woche, gab es dann eine kleine Störung, durch eine sehr ungleichmäßige Verteilung der Knoten. Grund hierfür waren Anpassungen an der Gateway Konfiguration und ein eiliges neu starten eben dieser. Gegen Abend konnte das Problem jedoch behoben werden.  

Grund für die Anpassung war die Entdeckung eines Problems der VPN-Konfiguration.

**Hintergrund**  
Wir bieten für den VPN Tunnel zu den Gateways zwei Optionen an: Verschlüsselt und Unverschlüsselt. Die zweite Methode kostet weniger Ressourcen und hat auf die Sicherheit nur geringe Auswirkungen.

#### Problem 1

Um dies umzustellen, gibt es im Konfigurationsmodus des Routers, einen zusätzlichen Reiter. Dort kann man sich entscheiden, ob man einen verschlüsselten oder unverschlüsselten Tunnel aufbauen möchte.

Diese Option fehlte jedoch. Grund hierfür war ein fehlendes Paket, dieses wird in den nächsten Firmware-Versionen wieder enthalten sein.

#### Problem 2

Das zweite Problem war jedoch, dass die Wahl der Knoten (ob un- oder verschlüsselt) ignoriert wurde, die Verschlüsselung war egal was der Knoten ausgewählt hatte grundsätzlich aktiviert.

Nach dem studieren der Dokumentation und der Konfiguration, konnte das Problem identifiziert und behoben werden. Ein Neustart aktivierte diese neuen Einstellungen, führte jedoch zu einer ungleichen Verteilung auf den Gateways.

## Treffen: September 2018

### Gemeinnützigkeit für Freifunk Vereine

Auf dem letzten Treffen wurde diesmal hauptsächlich über die Anfrage des Wirtschaftsausschusses des Schleswig-Holsteinischen Landtags gesprochen.  
Dieser möchte eine Stellungnahme von den Freifunk Initiativen aus SH zu zwei Anträgen ([1](http://www.landtag.ltsh.de/infothek/wahl19/drucks/00700/drucksache-19-00757.pdf), [2](https://www.landtag.ltsh.de/infothek/wahl19/drucks/00700/drucksache-19-00778.pdf)) haben.   

In diesen Anträgen geht es um eine [Gesetzesinitiative](http://dipbt.bundestag.de/dip21/brd/2017/0107-17.pdf), die es bereits in der vergangenen Bundestags Periode gab. In dieser soll das Vereinsrecht dahin gehend angepasst werden, dass auch das betreiben von Freien Netzen ein Grund für Gemeinnützigkeit ist.

>   
„26\. die Einrichtung und Unterhaltung von Kommunikationsnetzwerken, die der Allgemeinheit ohne Gegenleistung offenstehen (Freifunk-Netze). Als Gegenleistung in diesem Sinne gilt insbesondere die Erlaubnis zur   
Verwendung oder Weitergabe der Nutzerdaten für gewerbliche Zwecke.“
>
> Drucksache 107/17 aus der alten Initative  

Der Freifunk Nord e.V. hat vorgeschlagen eine gemeinsame Stellungsnahme abzugeben. Wir wollen uns dieser anschließen.  
Sobald es Neuigkeiten hierzu gibt, melden wir uns noch einmal.  
Wenn du Ideen oder Anregungen hast schick uns gerne eine [E-Mail](https://www.freifunk-suedholstein.de/kontakt/) oder verfasse einen Kommentar. Oder nutze einen unserer anderen Kanäle.

Der Ausschuss plant die Sitzung zu diesen Anträgen für den 30.10.2018.  
