---
categories:
  - firmware
date: "2023-03-10T11:14:26+00:00"
tags:
  - firmware
  - freifunk-südholstein
  - gluon
title: Firmware Update 2022.1.3.0

cover:
  image: /covers/michael-dziedzic-Rc6usOigMk-unsplash2.jpg
  alt: "Firmware Update 2022.1.3.0"
---
Leibe FreifunkerInnen,  
es gibt eine neue Frimware 2022.1.3.0, nach ungefähr 5 Monaten.  
Diese neue Version bringt vor allem Bugfixes, wir haben Gluon 2022.1.2 übersprungen und gehen direkt zu 2022.1.3.

Die Changelogs:

2022.1.2: [https://gluon.readthedocs.io/en/latest/releases/v2022.1.2.html](https://gluon.readthedocs.io/en/latest/releases/v2022.1.2.html)  
2022.1.3: [https://gluon.readthedocs.io/en/latest/releases/v2022.1.3.html](https://gluon.readthedocs.io/en/latest/releases/v2022.1.3.html)

Auf unserer Seite gab es keine Änderungen.

Die Firmware gibt es wie immer unter [https://install.freifunk-suedholstein.de/](https://install.freifunk-suedholstein.de/) das Update wird auf deinem Knoten automatisch installiert.

## Eine Bitte

Es wäre toll wenn sich mehr Knoten-BetreiberInnen dazu bereit erklären würden ihren Knoten auf den testing Kanal umstellen könnten.  
Wir haben aufgrund der Änderungen bei OpenWRT und Gluon aktuell nur drei Knoten, welche in der Lage sind neue Test Firmware zu installieren, das ist gewissermaßen problematisch da so die verschiedenen Konfigurationen nicht abgebildet werden. Die Update Kanäle stable, rc und testing sind Grundsätzlich zu einander Kompatibel, man muss also nicht alle knoten umstellen.

{{< figure src="/wp-content/uploads/2023/03/firmware%5Ftesting%5F2023%5F03.jpg" alt="Firmware Statistik für testing, nur 3 Knoten mit der Aktuellen Version." caption="Firmware Statistik für testing, nur 3 Knoten mit der Aktuellen Version." >}}

{{< figure src="/wp-content/uploads/2023/03/firmware%5Frc%5F2023%5F03.jpg" alt="Firmware Statistik für rc, nur 1 Knoten mit einer alten Version." caption="Firmware Statistik für rc, nur 1 Knoten mit einer alten Version." >}}

Bevor man sich dafür entscheidet den testing oder rc Kanal zu nutzen sind folgende Dinge zu beachten:

- Auf Testing wird manchmal auch experimentelle Firmware getestet, diese kann Fehler enthalten
- Gelegentlich nach dem Knoten sehen, prüfen ob er online ist.
- Auf [Mastodon](https://norden.social/@ffsh) kündige ich neue testing/rc Versionen an.
- In der Regel kommt ein update gleichzeitig in testing/rc, wenn keine großen Probleme zu erwarten sind.
- Wir sind auf Telegram und Matrix aktiv - siehe [/kontakt/](/kontakt/)
- Linux, SSH Kenntnisse sind von Vorteil, aber diese Dinge kann man auch lernen

Wenn du Lust hast deinen Knoten umzustellen, dann geht das über den Experten Modus im [Config Mode](https://gluon.readthedocs.io/en/latest/features/configmode.html),   
Oder über ssh und [uci](https://wiki.freifunk.net/Konsole#Autoupdater_Branch_festlegen).

Photo by [Michael Dziedzic](https://unsplash.com/@lazycreekimages?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/firmware?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
