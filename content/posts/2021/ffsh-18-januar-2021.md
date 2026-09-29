---
categories:
  - ffsh-blog
date: "2021-01-06T15:14:58+00:00"
summary: |-
tags:
  - ansible
  - freifunk-südholstein
  - gateways
  - januar
  - treffen
title: 'FFSH #18 Januar 2021'

cover:
  image: /covers/misha-feshchak-syCXK9WndqQ-unsplash-scaled.webp
  alt: "FFSH #18 Januar 2021"
---
Frohes neues Jahr wünsche ich und der Rest des Kernteams von Freifunk Südholstein.

Falls du es nicht mitbekommen hast, der Rc3 eine Veranstaltung des CCC fand vom 27-30 Dezember statt. Die meisten Vorträge wurden Aufgezeichnet, du kannst sie dir auf [media.ccc.de](https://media.ccc.de/c/rc3) ansehen.

Besonders möchte ich die Beiträge bezüglich Freifunk hervorheben:

- [Der faule Admin automatisiert](https://media.ccc.de/v/rc3-364267-der_faule_admin_automatisiert)
- [Freifunk-Knowhow - Gemeinnützigkeit & größere Installationen](https://media.ccc.de/v/rc3-496217-freifunk_knowhow_gemeinnuetzigkeit_groessere_installationen)
- [Internetgrundversorgung à la öffentlich rechtlicher Rundfunk nach Freifunk](https://media.ccc.de/v/rc3-289202-internetgrundversorgung__la_oeffentlich_rechtlicher_rundfunk_nach_freifunk)
- [Drölf Jahre Freifunk in Hamburg](https://media.ccc.de/v/rc3-6-droelf_jahre_freifunk_in_hamburg)

Im Bezug auf den ersten Beitrag hat Freifunk Bremen sofort losgelegt, [bremen.freifunk.net](https://bremen.freifunk.net/blog/2021/01/02/freifunk-videos-vom-rc3.html) sehr cool, vielleicht werde ich mich diesem Thema auch noch mal zuwenden.

## Abuse mail, Gateway Krummbach offline

Nach längerer Zeit hat einer unserer Gateway Admins mal wieder eine Abuse E-Mail erhalten, solche E-Mails werden von Urhebern bzw. ihren Anwälten versendet, wenn sie feststellen, dass von einer bestimmten IP ihrer Meinung nach Illegal Daten übertragen worden.  
Das passiert in der Regel nur bei P2P wie zb mit Bittorent, hierbei wird eine Datei in X Blöcke unterteilt, der Client fragt dann im Netzwerk von verschiedenen andern Clients die entsprechenden Blöcke an, bis er alle Blöcke und damit die ganze Datei hat. Gleichzeitig bietet der Client standardmäßig die Blöcke die er bereits lokal gespeichert hat im Netzwerk an. Das ist im Grunde eine tolle Technologie um Dateien zu verteilen und sie wird nicht nur zum illegalen tauschen von Filmen, Musik etc. verwendet sondern kommt mittlerweile auch bei Windows 10 im Update Prozess als auch bei einigen Spielen für die Updates zum Einsatz.

Der betroffene Admin hat sich dazu entschieden das betreffende Gateway "Krummbach" vorübergehend abzuschalten, dies beeinträchtigt die Funktion des FFSH Netzwerks jedoch nicht.

Bitte verwendet das Freifunk Netzwerk nicht als VPN oder anonymes Netzwerk, denn genau das sind wir nicht. Wir sind ein lose Gruppierung von freiwilligen, die eine Infrastruktur bereit stellen, die viel Arbeit und Wissen verlangt.

## Treffen 8. Januar

Nächsten Freitag ist es wieder so weit wir treffen uns digital auf dem Jitsi Server unserer Freunde der Linux User Group (LUG) Stormarn. Dieses mal wird der Gateway betrieb im Mittelpunkt stehen und wie wir die Gateway Architektur weiter entwickeln wollen.

Andere Themen und Fragen sind willkommen. Mitmachen könnt ihr einfach auf https://meet.lug-stormarn.de/FFSH.

## Ansible für Gateways

Ich habe mich in den letzten Wochen mit Ansible beschäftigt. Ganz einfach gesagt ist Ansible ein Tool zur automatischen Konfigurierung von Computern. Auf [Wikipedia](https://de.wikipedia.org/wiki/Ansible) findest du einen Beitrag, der Ansible korrekter und komplizierter erklärt.

Die Idee für unsere Community ist es das erstellen eines Gateways weitestgehend zu automatisieren und im Grunde unsere bisherige Dokumentation unter https://docs.freifunk-suedholstein.de abzulösen, keine Sorge die Inhalte werden sicherlich in anderer Form erhalten bleiben allerdings angepasst an Ansible.

Als Test hat mir bisher das Gateway [Brunsbach](https://map.freifunk-suedholstein.de/#!/de/map/005b27810096) gedient, das Gateway wird voraussichtlich nur temporär aktiv bleiben.

Andere Freifunk Communites arbeiten bereits mit Ansbile oder anderen Tools, da wir von dem Thema nur wenig Ahnung hatten habe ich ganz einfach angefangen und das "Playbook" stückweise erweitert. Praktischer weise konnte ich mich bei andern Communites inspirieren lassen ;)

Photo by [Misha Feshchak](https://unsplash.com/@extaf_ms?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/wifi?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
