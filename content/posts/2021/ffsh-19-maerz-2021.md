---
categories:
  - ffsh-blog
date: "2021-03-20T11:40:28+00:00"
tags:
  - firmware
  - freifunk-südholstein
  - freitrix
title: 'FFSH #19 März 2021'

cover:
  image: /covers/ekaterina-novitskaya-tWU1dHBKBK4-unsplash.webp
  alt: "FFSH #19 März 2021"
authors:
  - Grotax
---
```
März

 Und aus der Erde schauet nur
 Alleine noch Schneeglöckchen;
 So kalt, so kalt ist noch die Flur,
 Es friert im weißen Röckchen.

Theodor Storm
```

In der FFSH-Bolgserie fasse ich Entwicklungen in Freifunk Südholstein in einem Beitrag zusammen um sie mit euch zu teilen, sie erscheinen in unregelmäßigen Abständen.

Photo by [Ekaterina Novitskaya](https://unsplash.com/@catrionaobrian?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](/s/photos/march-spring?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

## Wachstum

{{< figure src="/media/posts/2021/ffsh-19-maerz-2021/knoten-ffsh-2jahre.webp" alt="Graph mit Anzahl der Freifunk Knoten in FFSH über die letzten 2 Jahre, ein stetiger Anstieg ist zu erkennen." caption="Graph mit Anzahl der Freifunk Knoten in FFSH über die letzten 2 Jahre, ein stetiger Anstieg ist zu erkennen." >}}

Freifunk Südholstein wächst seit Anfang 2019 stetig, wir ihr sehen könnt schwankt die Anzahl der Knoten stark, aber im großen und ganzen wachsen wir immer weiter. Das freut mich sehr :) Offenbar haben sich unsere hohe Aktivität und die Vorteile von FFSH herumgesprochen.

Doch was ist dieser gewaltige anstiegt im März? Nun der Anlass ist genau genommen etwas schade, seit einiger Zeit ist die Freifunk Pinneberg Community nicht mehr besonders aktiv. Und scheinbar gibt es mittlerweile ernsthafte Probleme um die gerammte Infrastruktur auf einen neueren Softwarestand zu hieven.

Einem Nutzer wurde es jetzt zu viel und beschloss einen Umzug der Knoten in das FFSH Netzwerk, die meisten Knoten konnten dabei Problemlos migriert werden. Das Engagement von "lui\_kast" ist es zu verdanken, dass diese [Knoten](https://map.freifunk-suedholstein.de/#!/de/map/14/53.73591229135907/9.520101161314544) nun einen Neustart bekommen haben, mit aktueller Software und einer Chance auch in Zukunft noch zu funktionieren. Dabei blieb ihm auch das klettern auf **Kirchentürme** nicht erspart.

{{< figure src="/media/posts/2021/ffsh-19-maerz-2021/knoten-ffsh.webp" alt="" caption="" >}}

## Infrastruktur

Alle paar Monate ändert sich etwas in unserer Infrastruktur, um euch einen kleinen Einblick zu geben habe ich mal in unser Inventar geschaut und eine kleine Übersicht erstellt.

Die größten Veränderungen sind dabei das Freitrix Server und das neue Gateway Brunsbach, welches komplett mit [Ansible](https://de.wikipedia.org/wiki/Ansible) aufgesetzt wurde, Eigentümer dieses Gateways bin ich selbst, es befindet sich nach den ersten Testläufen nun im Dauertest und wird auch genutzt um Änderungen am Ansible Script zu testen. Ich halte es aber für stabil genug um in unserem Netz zu arbeiten.

Der Freitrix Server ist nun in der Hand der FFSH Admins und wurde komplett neu aufgesetzt. Ziel der Migration war der Zugriff für mehrere Admins so wie eine höhere Verfügbarkeit. Abgelaufene Zertifikate sind nun hoffentlich ein Problem der Vergangenheit.

Falls ihr Fragen zur Infrastruktur habt tretet gerne einem unserer [virtuellen Treffen](/events/category/treffen/) bei.

{{< figure src="/media/posts/2021/ffsh-19-maerz-2021/Infrastruktur_202103-2.webp" alt="" caption="" >}}

## Wireguard - schnelleres Freifunk

Der aktuelle Flaschenhals bezüglich Datenübertragung in FFSH ist fastd, eine schlanke VPN Software welche auf den typischen Freifunk Knoten nicht besonders gut performant ist, mehr dazu kannst du in einem älteren Beitrag ["VPN und Freifunk"](/vpn-und-freifunk/) nachlesen.

Wireguard scheint auf dem aktuellen Stand mit Abstand die beste Lösung zu sein, leider ist Wireguard nicht im aktuellen Gluon verfügbar, es gibt jedoch Communities die mit viel Energie und Zeit bereits auf Gluon Basis mit Wiregaurd arbeiten, Freifunk München und Hannover haben sich dabei besonders engagiert, ich bin zuversichtlich, dass Gluon in naher Zukunft Wireguard unterstützen wird.

Ich habe in Zwischenzeit auch etwas probiert, getestet und viel geflucht aber war am Ende erfolgreich und konnte eine Firmware mit Wireguard bauen, aktuell habe ich einen TP-Link 1043v3 mit dieser Firmware laufen. Einschränkend muss ich allerdings sagen, dass dieser Knoten in Ermangelung eines Gateways aktuell nur über einen Knoten, der noch fastd verwendet, ins Freifunk-Netz kommt.

Dieser erste Schritt hilft mir aber schon mal einzuschätzen wie Aufwendig es sein wird, eine Wireguard Firmware zu bauen, kurz gesagt, es wird sehr einfach.

**In eigener Sache**: Ich würde mich sehr über eine Verstärkung bei der Firmware freuen, egal ob du nun schon Erfahrung hast oder nicht. Voraussetzung ist dass du etwas programmieren kannst und Linux deine Heimat ist.  
Etwas Diversität täte unserer Community auch gut, aktuell besteht das Admin Team ausschließlich aus Männern.  
Also wenn du dich für Firmware interessierst dann schreibe mir doch einfach mal eine E-Mail [benjamin@freifunk-suedholstein.de](mailto:benjamin@freifunk-suedholstein.de) ich beiße nicht, versprochen.
