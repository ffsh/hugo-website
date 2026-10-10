---
categories:
  - allgemein
date: "2021-01-24T12:57:00+00:00"
tags:
  - fastd
  - l2tp
  - vpn
  - wireguard
title: VPN und Freifunk

cover:
  image: /covers/denny-muller-JyRTi3LoQnc-unsplash-scaled.webp
  alt: "VPN und Freifunk"
authors:
  - Grotax
---
In diesem Beitrag geht es über VPNs und was das mit Freifunk zu tun hat.  
Photo by [Denny Müller](https://unsplash.com/@redaquamedia?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/network?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

## VPN

VPN was ist das überhaupt? VPN steht für **V** irtual **P** rivate **N** etwork also ein virtuelles privates Netzwerk, du hast vielleicht auch schon mal einen YouTuber gesehen, der für NordVPN oder irgend einen anderen Anbieter Werbung gemacht hat.  
Meistens wird davon gesprochen wie gefährlich das Internet ist und das all dein Datenverkehr überwacht wird. Ich muss dabei immer etwas schmunzeln oder spule das Video genervt vor.  
Denn natürlich ist so ein VPN Anbieter nicht das Allheilmittel, es kommt immer noch sehr darauf an sich klug zu verhalten, keine Daten auf unseriösen Webseiten anzugeben, darauf zu achten, wo man sein Passwort eingibt.  
Ein tatsächlicher Nutzen von VPNs kann das Umgehen von Geoblocking sein, Netflix und andere ähnliche Anbieter haben stets ein lokales Angebot, man kann nie auf alle Inhalte zugreifen. Deine Lieblingsserie gibt es nur bei Netflix USA, dann nimmst du halt einen VPN-Ausgang in den USA, so zumindest die Theorie denn Natürlich gefällt das der Filmindustrie gar nicht und daher versucht Netflix solch einen "Missbrauch" zu erkennen und blockiert die IP-Adressen der Anbieter, diese wiederum versuchen neue IP-Adressen zu beschaffen, die noch nicht geblockt sind.

OK so Weit so gut aber was genau hat das jetzt mit Freifunk zu tun? Wir im Freifunk Südholstein verwenden auch VPN Software mit dem Namen "fastd", diese verwenden wir, um die Freifunk Knoten mit den Gateway-Servern zu verbinden und schaffen dadurch auch eine indirekte Verbindung zu allen anderen Freifunk Knoten.

{{< figure src="/media/posts/2021/vpn-und-freifunk/Netzwerk_ffsh19-300x250.webp" alt="Vereinfachte Topologie unseres Netzwerks mit einem Gateway, einem Freifunk Knoten und 4 Endgeräten. Der Freifunk Knoten ist über fastd mit dem Gateway verbunden." caption="Vereinfachte Topologie unseres Netzwerks mit einem Gateway, einem Freifunk Knoten und 4 Endgeräten. Der Freifunk Knoten ist über fastd mit dem Gateway verbunden." >}}

### fastd, L2TP, WireGuard

Für Freifunk gibt es verschiedene VPN Technologien ich will jetzt nicht zu sehr in die Tiefe gehen, sonst erzähle ich am Ende noch etwas Falsches, unten findest du weiterführende Links.

**fastd** ist die VPN-Software, die bei Freifunk Südholstein und vielen anderen Freifunk Gruppen eingesetzt wird.  
Jetzt leben wir seit einigen Monaten in einer neuen Situation. Durch die Pandemie sind viele Schüler, Studenten und Arbeitnehmer auf Videokonferenzen angewiesen, für Videokonferenzen braucht man eine relativ große und stabile Verbindung. Vor allem bei der Bandbreite also den MBit/s schwächelt fastd.

> **Tipp: In unserer Firmware kannst du die Verschlüsselung zwischen dem Freifunk Knoten und den Gateways ausschalten und erreichst somit eine schnellere Verbindung.**

**L2TP** ist im eigentlichen Sinne kein VPN aber das ignorieren wir an dieser Stelle und betrachten die Lösung als ganzes, welche auf L2TP basiert. Ein paar Freifunk Communitys sind auf diese Lösung umgestiegen, weil sie eine bessere Geschwindigkeit selbst auf schwachen Geräten bietet. Der große Nachteil ist jedoch, dass keine Verschlüsselung unterstützt wird.   
Auch wenn wir durchaus Empfehlen die Verschlüsselung bei fastd abzuschalten sollte doch jeder Knotenbetreiber selber entscheiden können, ob er das tun möchte oder nicht.

**WireGuard** ist gegenüber den anderen beiden Lösungen der große Star, nicht nur bietet WireGuard eine sichere Verschlüsselung, sondern auch noch eine hohe Geschwindigkeit und einfach Konfiguration. Der größte Nachteil von WireGuard ist, dass es noch nicht in Gluon, der Firmware welche wir einsetzen, integriert ist. Außerdem ist die Gateway-Seite nur teilweise dokumentiert. Andere Communitys z.b. Freifunk München haben sehr viel Zeit und Aufwand investiert um WireGuard in ihrem Netzwerk verwenden zu können. Daher sehen wir vom FFSH-Kern-Team aktuell keine Möglichkeit WireGuard bei uns einzuführen.

## Ausblick

Sobald es einfacher wird, WireGuard im Freifunk Netz einzusetzen kannst du dir sicher sein, dass wir an einer Migration arbeiten werden.

## Links

- [https://wiki.freifunk.net/Fastd](https://wiki.freifunk.net/Fastd)
- [https://de.wikipedia.org/wiki/Layer\_2\_Tunneling\_Protocol](https://de.wikipedia.org/wiki/Layer_2_Tunneling_Protocol)
- [https://de.wikipedia.org/wiki/WireGuard](https://de.wikipedia.org/wiki/WireGuard)
