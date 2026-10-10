---
categories:
  - firmware
date: "2018-07-04T19:18:00+00:00"
title: Fehler beim Update auf 2017.1.8
authors:
  - Grotax
---
Beim letzten Firmware Update ist mir leider ein Fehler unterlaufen. Dieser hat die Folge, dass Dein Lauenburg Knoten jetzt ein Stormarn Knoten ist.  
**Was bedeutet das?**  
Dein Knoten zeigt als SSID nun stormarn.freifunk.net an und wird auf der Karte als Stormarner-Knoten angezeigt.  
**Wie viele Knoten sind Betroffen?**  
Es sind etwas mehr als 20 Knoten von Lauenburg nach Stormarn gewechselt.  
**Was muss ich machen?**  
Das kommt darauf an:

1. Du willst wieder lauenburg.freifunk.net als SSID haben dann siehe unten.
1. Du willst einfach nur Freifunk benutzen, dann brauchst du nichts tun.

## **Knoten zurück auf die Lauenburg-Firmware**

Leider ist es uns nicht möglich diesen Fehler von außen zu beheben. Wenn du wieder einen Lauenburger-Knoten haben möchtest musst du folgendes tun.

Du gehst auf die neue [Firmware Seite](/firmware-ffrz/) und suchst nach deinem Router. Dort lädst du die aktuelle "stable" (die Upgrade Datei reicht) Version herunter.  
Verbinde nun deinen Rechner über ein LAN-Kabel mit einer der (gelben) Anschlüsse.  
Halte die Reset-taste an deinem Router für etwa drei Sekunden gedrückt.   
Nun sollten alle LEDs kurz aufblinken und der Router startet in den Konfigurationsmodus.

{{< figure src="/media/posts/2018/fehler-beim-update-auf-2017-1-8/00.webp" alt="" caption="" >}}

Jetzt gibst du in deinem Browser die IP Adresse 192.168.1.1 ein.

{{< figure src="/media/posts/2018/fehler-beim-update-auf-2017-1-8/01-2.webp" alt="" caption="" >}}

Nun klickst du oben Rechts auf den Reiter Experten-Modus.  
Jetzt klickst Du auf den Reiter Firmware aktualisieren:

{{< figure src="/media/posts/2018/fehler-beim-update-auf-2017-1-8/02-1.webp" alt="" caption="" >}}

Hier wählst Du nun die Datei aus, welche Du zuvor von unserer Webseite geladen hast.  
Danach nur noch bestätigen. Nach dem dein Router neu gestartet hat, sollte nun wieder die korrekte SSID lauenburg.freifunk.net angezeigt werden. Solltest Du dabei Probleme haben oder sonstige Fragen haben schreibe uns gerne eine [E-Mail](https://www.freifunk-suedholstein.de/kontakt/).

Ich entschuldige mich für die entstanden Unannehmlichkeiten.
