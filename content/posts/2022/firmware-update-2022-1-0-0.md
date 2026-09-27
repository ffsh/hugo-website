---
categories:
  - firmware
date: "2022-09-12T17:47:14+00:00"
tags:
  - "2022.1"
  - firmware
  - freifunk-südholstein
  - gluon
title: Firmware Update 2022.1.0.0

cover:
  image: /covers/thomas-jensen-C9dTdBM3joM-unsplash.jpg
  alt: "Firmware Update 2022.1.0.0"
---
Es ist wieder so weit, es gibt eine neue Firmware.

Dieses Update basiert auf dem neuen Gluon Release v2022.1.  
Die vermutlich größte Veränderung ist die neue OpenWrt Version 22.03 auf der Gluon aufbaut und die Veränderungen, welche in diese mitbringt.  
Leider werden nicht alle Geräte dieses Update erhalten, mehr dazu weiter unten.

## Veränderungen

Die neue Gluon Version nutzt Linux Kernel 5.15, dies ist ein Upgrade von 4.14, sowie wireless-backports 5.15.  
Alle Änderungen findest du im [Gluon Changelog](https://gluon.readthedocs.io/en/latest/releases/v2022.1.html).

### Neue VPN Optionen

Erfreulicher weise werden gleich zwei neue VPN Optionen unterstützt. Die VPN Verbindung wird zwischen einem Router und einem der Gateways aufgebaut, über diese VPN Verbindung wird der Knoten mit dem Freifunk Netzwerk sowie dem Internet verbunden.  
Wir benutzen _fastd_ für die VPN Verbindung in Freifunk Südholstein. In diesem Release erhält _fastd_ eine neue Fähigkeit erhalten. Wenn du auf deinem Router in den erweiterten Einstellungen auf Hohe VPN Performance umstellst, wird mit dieser Version L2TP eingesetzt. Diese Methode verschlüsselt den VPN Verkehr zwischen Router und Gateway **nicht**! Im Detail hab ich das alles schon mal in einem anderen [Beitrag erklärt](/vpn-und-freifunk/).

Das ist aber noch nicht alles, zusätzlich wird nun Wireguard unterstützt. Allerdings eignet sich die aktuelle Implementierung für uns nicht. Aktuell ist es nötig den öffentlichen Schlüssel bei den Gateway-Betreibern zu registrieren. Dies ist zu viel Aufwand für uns und würde auch viel Aufwand für die Knotenbetreiber bedeuten.  
Aber trotzdem eine äußerst erfreuliche Entwicklung.

### Unterstützte Geräte

Dieser Release unterstützt dank der Arbeit der Gluon Entwickler einige Geräte. Die vollständige Liste findest du Unten, aufgeteilt nach Architektur und Hersteller.

#### ath79-generic

- D-Link
  - DAP-2660 A1
- Enterasys
  - WS-AP3705i
- Siemens
  - WS-AP3610
- TP-Link
  - Archer A7 v5
  - CPE510 v2
  - CPE510 v3
  - CPE710 v1
  - EAP225-Outdoor v1
  - WBS210 v2

#### ath79-mikrotik

- Mikrotik
  - RB951Ui-2nD

#### ipq40xx-generic

- Aruba Networks
  - AP-303H
  - AP-365
  - InstantOn AP11D
  - InstantOn AP17

#### ipq40xx-mikrotik

- Mikrotik
  - SXTsq-5-AC

#### ramips-mt7620

- Xiaomi
  - Mi Router 3G (v2)

#### ramips-mt7621

- Cudy
  - WR2100
- Netgear
  - R6260
  - WAC104
  - WAX202
- TP-Link
  - RE500
  - RE650 v1
- Ubiquiti
  - UniFi 6 Lite
- Xiaomi
  - Mi Router 4A (Gigabit Edition)

#### ramips-mt7622

- Linksys
  - E8450
- Xiaomi
  - AX3200
- Ubiquiti
  - UniFi 6 LR

#### ramips-mt76x8

- GL.iNet
  - microuter-N300
- Netgear
  - R6020
- RAVPower
  - RP-WD009
- TP-Link
  - Archer C20 v4
  - Archer C20 v5
  - RE200 v2
  - RE305 v1
- Xiaomi
  - Mi Router 4C
  - Mi Router 4A (100M Edition)

#### rockchip-armv8

- FriendlyElec
  - NanoPi R2S

#### mpc85xx-p1010

- Sophos
  - RED 15w rev. 1

#### mpc85xx-p1020

- Extreme Networks
  - WS-AP3825i

### Nicht mehr unterstützte Geräte

Leider werden Auch einige Geräte nicht länger von Gluon unterstützt, das liegt an der Hardware dieser Geräte.  
Das Hauptproblem ist der geringe Speicher, welcher bei diesen Geräten nicht ausreichend ist.  
Diese Geräte werden keine weiteren (großen) Updates mehr erhalten.  
Dennoch können sie Teil unseres Freifunk Netzwerks bleiben. Klar ist, es wird der Punkt kommen an dem diese Router nicht weiter betreiben werden können. Wann dieser Punkt gekommen ist kann ich nicht genau sagen, jeder Freifunk Fan der solch ein Gerät besitzt sollte sich aber nach alternativen umschauen.

- D-Link
  - DIR-615 (C1, D1, D2, D3, D4, H1)
- Linksys
  - WRT160NL
- TP-Link
  - TL-MR13U (v1)
  - TL-MR3020 (v1)
  - TL-MR3040 (v1, v2)
  - TL-MR3220 (v1, v2)
  - TL-MR3420 (v1, v2)
  - TL-WA701N/ND (v1, v2)
  - TL-WA730RE (v1)
  - TL-WA750RE (v1)
  - TL-WA801N/ND (v1, v2, v3)
  - TL-WA830RE (v1, v2)
  - TL-WA850RE (v1)
  - TL-WA860RE (v1)
  - TL-WA901N/ND (v1, v2, v3, v4, v5)
  - TL-WA7210N (v2)
  - TL-WA7510N (v1)
  - TL-WR703N (v1)
  - TL-WR710N (v1, v2)
  - TL-WR740N (v1, v3, v4, v5)
  - TL-WR741N/ND (v1, v2, v4, v5)
  - TL-WR743N/ND (v1, v2)
  - TL-WR840N (v2)
  - TL-WR841N/ND (v3, v5, v7, v8, v9, v10, v11, v12)
  - TL-WR841N/ND (v1, v2)
  - TL-WR843N/ND (v1)
  - TL-WR940N (v1, v2, v3, v4, v5, v6)
  - TL-WR941ND (v2, v3, v4, v5, v6)
  - TL-WR1043N/ND (v1)
  - WDR4900
- Ubiquiti
  - AirGateway
  - AirGateway Pro
  - AirRouter
  - Bullet
  - LS-SR71
  - Nanostation XM
  - Nanostation Loco XM
  - Picostation
- Unknown
  - A5-V11
- VoCore
  - VoCore (8M, 16M)

Photo by [Thomas Jensen](https://unsplash.com/@thomasjsn?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
