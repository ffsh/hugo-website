---
author: Grotax
autopostToMastodon-post-status: "off"
date: "2019-02-08T11:53:58+00:00"
title: Hardware
---
Du möchtest einen neuen Router für Freifunk kaufen, du weißt aber nicht welchen, dann gebe ich hier ein paar Hinweise, wie du den passenden Router für dich findest.

Je nachdem wie viele Kenntnisse du bereits hast, reicht dir vielleicht unsere Firmware-Seite [install.freifunk-suedholstein.de](https://install.freifunk-suedholstein.de) sie zeigt immer alle aktuell unterstützten Geräte.

Wenn nicht überlege dir welche Anforderungen du hast das Budget, Anzahl Nutzer, Standort, ... und wende ich dann über eine unsere Kontaktmöglichkeiten an unsere Community [/kontakt/](/kontakt/) Alternativ kannst du dich auch im [Freifunk Forum](https://forum.freifunk.net) umschauen.

Beachte auch die folgenden Hinweise.

## OpenWrt & Gluon

[OpenWrt](https://openwrt.org/about) ist einen freies Betriebssystem für Router, WIFI-Access points etc.

[Gluon](https://gluon.readthedocs.io/en/latest/) basiert auf OpenWrt und fügt Funktionalitäten hinzu, die in den Freifunk Communities benötigt werden, wir benutzen Gluon als unsere Firmware, die Konfiguration für Gluon findest du auf [GitHub](https://github.com/ffsh/site).

Beide Projekte werden von freiwilligen Enthusiasten in ihrer Freizeit betreut, es gibt zwar ein paar wenige Hersteller, die OpenWrt für ihre Router verwenden aber die meisten setzen auf eine proprietäre, geschlossene Firmware. Da es sich um Freiwillige handelt, kann es vorkommen, dass Geräte nicht mehr unterstützt werden.

## 4/32

Im Freifunk Umfeld hört man manchmal 4/32 sei nicht mehr zeitgemäß aber was genau ist damit gemeint?  
4/32 bezieht sich auf den Speicher des Routers, 4MB für die Firmware und 32MB für den Arbeitsspeicher.

Über die Jahre ist [Gluon](https://wiki.freifunk.net/Gluon) immer größer geworden, das ist die Basis für unsere Firmware, wie in vielen anderen Freifunk Communites auch. Da immer mehr Funktionen hinzukommen und verbessert werden, wächst die Firmware über die Jahre.

4MB ROM reichen mittlerweile nicht mehr aus, wir können für solche Geräte keine neue Firmware bereitstellen.

Oft kann man im Laden oder online nicht sehen wie viel Speicher ein Gerät hat aber auf [install.freifunk-suedholstein.de](https://install.freifunk-suedholstein.de) werden Geräte die zu wenig Speicher standardmäßig gar nicht mehr angezeigt.

## 2.4GHz & 5GHz

Gerade in Ballungsräumen kann es sinnvoll sein einen Router mit unterstützen für 5GHz zu kaufen, im Gegensatz zu 2.4 GHz gibt es im 5GHz Bereich mehr Kanäle, dies erlaubt es mehr Geräten gleichzeitig zu funken ohne, dass sie sich gegenseitig stören.

Unsere Freifunk Firmware ist verwendet immer die gleichen Kanäle (mit Ausnahme von Outdoor Geräten) im 2.4GHz Bereich ist es Kanal 1 und im 5Ghz Bereich Kanal 44. Wir sind auf Grund der Mesh technik an diese Kanäle gebunden und können nicht dynamisch wechseln.

## Hardwareversion

Hersteller von Routern ändern gerne mal die Hardware, das liegt im wesentlichen an der Verfügbarkeit und den Preisen von einzelnen Komponenten im Gerät. Die Hersteller haben natürlich genügend Zeit um ihre Firmware anzupassen, Gluon/OpenWrt haben diese Zeit nicht.  
Und da die Geräte teilweise die gleiche Firmware aber auch manchmal eine eigene Firmware brauchen, musst du bei vielen Geräten auch die Hardwareversion überprüfen.

TP-Link ist besonders für seine schnell wechselnden Hardwareversionen bekannt. Manche Händler geben die Hardwareversion an, manchmal findet man auch in den Bewertungen Hinweise. Im Laden kann man die Hardwareversion oft auf dem Karton, bzw. auf Aufklebern finden.
