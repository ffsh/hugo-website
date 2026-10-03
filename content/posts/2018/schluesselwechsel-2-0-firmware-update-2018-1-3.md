---
categories:
  - allgemein
  - firmware
date: "2018-12-06T17:24:02+00:00"
summary: Ab heute wird eine neue Firmware auf dem `testing` und `rc` Zweig verteilt. Diese basiert auf Gluon 2018.1.3 und enthält einige Fehlerbhebungen.
tags:
  - firmware
  - v2018.2
  - v2019.1
title: Schlüsselwechsel 2.0 &amp; Firmware Update 2018.1.3
authors:
  - Grotax
---
Ab heute wird eine neue Firmware auf dem `testing` und `rc` Zweig verteilt. Diese basiert auf Gluon 2018.1.3 und enthält einige Fehlerbhebungen.

Außerdem erinnert sich der eine oder andere vielleicht noch, dass man in der aktuellen Firmware nicht einstellen kann ob der VPN Tunnel verschlüsselt wird oder nicht. Mit dieser Version ist dieser Fehler behoben.  
Ursache war ein fehlendes Paket - also ein Fehler auf unserer Seite.

## Schlüsselwechsel Teil 2

Ende Juni hatte ich angekündigt die Schlüssel für die VPN Verschlüsselung zu erneuern. Dies ist bisher nicht bei allen Gateways passiert. In der folgenden Tabelle wird dargestellt welche Gateways bereits einen neuen Schlüssel haben.  

GatewayHat neuen Schlüssel  
BarnitzNeinBesteJaHopfenbachJaKrummbachJaTraveJa

Das mittlerweile nicht mehr existierende Gateway Viehbach hatte bis zum abschalten noch einen alten Schlüssel. Für die erste 2019er Version plane ich auch den letzten Schlüssel zu tauschen. Wer dann noch einen Knoten mit alter Firmware betreibt wird unter Umständen keine Verbindung mit dem Netzwerk herstellen können.  
