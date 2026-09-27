---
categories:
  - ffsh-blog
date: "2021-06-17T09:41:45+00:00"
tags:
  - firmware
  - freifunk-südholstein
  - gateways
title: 'FFSH #22 Juni 2021'

cover:
  image: /covers/omar-flores-MOO6k3RaiwE-unsplash.jpg
  alt: "FFSH #22 Juni 2021"
---
Moin liebe Freifunka,

es ist mal wieder Zeit, um ein paar kleine Updates aus dem Maschinenraum zu geben.

Photo by [Omar Flores](https://unsplash.com/@colorflores?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/network?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

## Knoten mit alter Software aktualisiert

{{< figure src="/wp-content/uploads/2021/05/firmware-statistik-202105.png" alt="Screenshot von der Statistik aus unserer Karte. Sie zeigt insgesamt 8 Knoten mit sehr alter Software." caption="Screenshot von der Statistik aus unserer Karte. Sie zeigt insgesamt 8 Knoten mit sehr alter Software." >}}

Mit etwas Aufwand konnten wir auf dem vergangenen Freifunk Treffen dafür sorgen, dass der Großteil der Knoten mit einer Firmware aus 2018 auf die aktuelle Version aktualisiert wird. Diese Knoten wollten nicht aktualisieren, da sie 2 valide Signaturen voraussetzen. Wir hatten diese Voraussetzung etwa 2017 eingeführt, seit dem hat sich jedoch einiges verändert und daher setzen wir heute nur noch auf eine valide Signatur, welche im Regelfall von mir erstellt wird.

Falls dir Signaturen in diesem Kontext nichts sagen, hier eine kurze Erklärung.

Eine Signatur kannst du dir im Grunde als eine digitale Unterschrift vorstellen, der Knoten lädt sich ein Manifest von unserem Server herunter, in diesem Manifest ist für jeden Router hinterlegt welche Datei er herunterladen muss, um ein Update zu machen. Daneben steht eine Prüfsumme der Update-Datei, diese Prüfsumme stellt sicher, dass die Datei nicht unbemerkt verändert werden kann. Das Manifest wird von mir signiert, daher weiß der Router, dass er dem Manifest vertrauen kann. Die Überprüfung der Signatur erfolgt durch mathematische Verfahren.

Mit noch etwas mehr Aufwand (bauen einer extra Firmware) konnten wir auch den letzten Knoten, welcher eine Version aus 2016 verwendet aktualisieren. Damit ist sichergestellt, dass diese Knoten auch weiterhin ein Teil unseres Freifunknetzes bleiben.

## Neue Firmware verzögert sich

Gluon 2021.1 wurde am 10. Juni veröffentlicht, die Firmware wurde auch bereits von mir gebaut und im testing Kanal bereitgestellt. Seit dem sind jedoch ein noch ein paar Fehlerbehebungen im Gluon Repository eingeflossen, daher habe ich beschlossen mit der Veröffentlichung im stable Kanal noch etwas zu warten.

## Umzug zu Netcup

Das Gateway Brunsbach ist zu Netcup umgezogen, damit haben wir jetzt insgesamt 3 Gateways bei Netcup und 4 bei Hetzner. Der Umzug lief dank Ansible in etwa 10 min ab, nachdem der Server von Netcup mit einem aktuellen Debian bereitgestellt wurde.
