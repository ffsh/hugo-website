---
categories:
  - ffsh-blog
date: "2019-11-16T10:32:08+00:00"
tags:
  - "2019"
  - firmware
  - november
  - oktober
  - südholstein
title: 'FFSH #11 Oktober & November'
authors:
  - Grotax
---
Langsam wird es richtig kalt draußen und es wird Zeit sich drinnen um den Freifunk Knoten zu sammeln.

## Gemeinnützigkeit

Der Bundestag hat einen Antrag der FDP, die Abgabenordnung dahin gehend zu ändern, dass Freifunk generell gemeinnützig wird, abgelehnt.  
Damit sinkt auch unsere Chance auf einen gemeinnützigen Verein. Wie man um dieses Thema seit Jahren erfolgreich rum-tänzeln kann ist mir ein Rätsel. Am ende schaffen sie es noch, dass solange abzusitzen bis es keine Freifunk Gruppen mehr gibt ...

## Firmware

Heute habe ich die letzte Firmware der 2018er Serie, 2018.2.3 veröffentlicht.
Neue Geräte:

- TP-Link CPE210 v3
- Aerohive HiveAP 121
- Aerohive HiveAP 330
- TP-Link TL-MR3420 v5

Und einige Bugfixes

- Fixes passwordless SSH access when gluon-authorized-keys was used without gluon-setup-mode.
- Fixes ingress traffic shaping. A necessary kernel config value was not set.
- Fixes the generation of the bootloader image for the AVM FRITZ!Box 4040.
- Fixes the IBSS mesh on the GL.iNet AR750. The wrong driver/firmware package was previously selected.
- Fixes the primary mac selection on the TP-Link Archer C25 v1.

Außerdem hab ich angefangen die neue 2019.1er Version zu testen, es geht also weiter ; )
