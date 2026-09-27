---
categories:
  - politik
date: "2020-11-10T17:08:30+00:00"
tags:
  - digital
  - e2e
  - politik
title: 'EU: E2E Verschlüsselung unterwandern'
---
Vertraulichkeit, Integrität, Verfügbarkeit¹ sind die Schutzziele der Informationssicherheit. Mit Verschlüsselung erreichen wir sowohl Vertraulichkeit als auch Integrität, sie sind für eine sichere Kommunikation essentiell.

Nun gibt es immer wieder die Überlegung, dass eine Ende zu Ende Verschlüsselung kurz E2E zwar eine feine Sache ist aber die Verfolgung von Kriminellen und Terroristen dadurch erschwert wird. Also muss eine Hintertür geschaffen werden, damit der Staat bzw. seine Geheimdienste oder die Polizei zumindest mitlesen können.

Was wäre nun der Vorteil, wenn Geheimdienste und Polizei dazu in der Lage wären unsere Chatverläufe lesen zu können. Eventuell würde es die Ermittlungsarbeit erleichtern, man könnte die Anzahl der Ermittler eventuell sogar verringern und so Personal einsparen oder die bisherigen Kapazitäten erhöhen. Ob das in der Realität auch so aussieht ist jedoch fraglich. Was hält Terroristen und Kriminelle davon ab einen Service zu benutzen, der nicht überwacht werden kann, im Grunde gar nichts. Es gibt genug gute Lösungen um auch ohne WhatsApp, Telegram und Co zu kommunizieren.

Nachteilig wären der potentielle Missbrauch, wäre ja nicht das erste mal, dass Zugriff auf private Daten auch von Behördenmitarbeitern für private Zwecke genutzt wird.  
Genau daher gibt es ja Ende zu Ende Verschlüsslung weil es viel einfacher ist einem Kommunikationsweg zu vertrauen, wenn da kein dritter sitzt, der immer mit liest aber hoch und heilig versprochen hat nichts zu verraten.  
Vertrauen in eine gute Technologie wird dadurch untergraben.

Im aktuellen Versuch die Verschlüsselung zu umgehen, wird von minimalen Eingriffen gesprochen. Damit ist gemeint, dass der App Anbieter oder der AppStore oder im Zweifel der Internetanbieter ein spezielle Version der App ausliefert, diese würde dann anders als normal auch für einen dritten Empfänger die Nachricht verschlüsseln, im Grunde so wie in einem Gruppenchat, nur das der dritte Empfänger unsichtbar ist. Die Nachrichten könnten dann abgegriffen und entschlüsselt werden.  
Jetzt ist es aber so, dass Apps selbst signiert sind, damit nur der Entwickler bzw. der AppStore in der Lage ist eine neue Version der App zu veröffentlichen. Weiterhin kommunizieren die Apps mit ihren Diensten per https.   
Das bedeutet, dass wenigstens der AppStore aber besser auch noch der Entwickler mitspielen muss.

Auf den ersten Blick ist dieser Ansatz vielleicht weniger schädlich, Ermittler finden einen Verdächtigen und fordern das mitlesen beim AppStore an, dieser versendet eine manipulierte Version der App als extra update nur für diesen einen Nutzer. Was die Ermittler in die Lage versetzt die Kommunikation zu verfolgen.  
Aber diese Art der Untergrabung macht genau den Aspekt den E2E Verschlüsselung so sicher macht, kaputt. Es senkt das Vertrauen in solche Lösungen und ist eine Einladung für eine weitergehende und tiefgreifende Unterwanderung auch durch dritte Staaten und Interessenten.

Aber Grotax sind die Ermittler dann nicht völlig hilflos und können die Terroristen und Kriminellen nicht schnappen?  
Naja also wenn ich mir so angucke welche Erfolge es in letzter Zeit bei digitalen Verbrechen gab, dann muss ich sagen ich glaube wenn man fähige talentierte intelligente Ermittler hat, dann braucht man so etwas nicht.  
Und wenn ich mir die "erfolgreichen" Terror Anschläge ansehe, dann hört man immer, "X war den Geheimdiensten seit X Monaten/Jahren bekannt, man kümmerte sich nicht um Hinweise"  
Und solch einem Apparat der nicht genug Personal hat um die vorhanden Daten zu bearbeiten will man jetzt mehr Daten geben, ich weiß ja nicht.

Kurz, E2E Verschlüsselung beruht auf dem Konzept niemanden vertrauen zu müssen. Nimmt man diesen Aspekt heraus, dann hat man keine E2E Verschlüsselung mehr und schafft sie damit ab.

### Referenzen

1. https://de.wikipedia.org/wiki/Informationssicherheit#Motivation\_und\_Ziele\_der\_Informationssicherheit
1. https://netzpolitik.org/2020/neuer-angriff-auf-ende-zu-ende-verschluesselung/
1. https://www.golem.de/news/crypto-wars-regierung-dementiert-plaene-fuer-verschluesselungsverbot-2011-152012.html
