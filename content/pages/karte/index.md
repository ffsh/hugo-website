---
date: '2026-10-03T06:26:27Z'
title: 'Karte'
authors:
  - Grotax
url: /karte/
references:
  - "Freifunk Südholstein – Meshviewer: Interaktive Knotenkarte auf map.freifunk-suedholstein.de"
  - "Freifunk Südholstein – Loslegen: Schritt-für-Schritt-Anleitung zur Einrichtung eines Freifunk-Routers"
---
Das Freifunk-Netzwerk lebt vom Mitmachen: Jedes Gerät (Knoten) erweitert das dezentrale WLAN-Netz und verbindet sich per Funk oder VPN mit anderen Routern in der Region[cite: 1]. 

Auf unserer interaktiven Karte (**Meshviewer**) kannst du in Echtzeit sehen, wo Freifunk-Knoten aktiv sind, wie sie untereinander vernetzt sind und welche Leistung das Netz aktuell erbringt[cite: 1].

> **Hinweis zur Standort-Anzeige:**  
> Bitte beachte, dass ein Freifunk-Knoten **nur dann auf der Karte sichtbar ist**, wenn die Koordinaten bei der Einrichtung **freiwillig freigegeben wurden**. Knoten ohne Koordinaten nehmen zwar voll am Netzwerk teil, tauchen jedoch aus Datenschutzgründen nicht auf der geografischen Karte auf[cite: 1].

<div style="text-align: center; margin: 2rem 0;">
  <a href="https://map.freifunk-suedholstein.de/" target="_blank" rel="noopener noreferrer" class="button" style="font-size: 1.25rem; padding: 0.8rem 1.5rem; background-color: #FFB400; color: #222; font-weight: bold; text-decoration: none; border-radius: 6px; display: inline-block;">
    ➔ Interaktive Knotenkarte öffnen (map.freifunk-suedholstein.de)
  </a>
</div>

---

## Legende: So liest du den Meshviewer

Damit du dich auf der Karte auf Anhieb zurechtfindest, hier die Bedeutung der Status-Punkte und Verbindungssymbole[cite: 1]:

### Status der Knoten (Nodes)
* **🟢 Hellgrün (new):** Kürzlich neu zum Netzwerk hinzugefügte Knoten[cite: 1].
* **🔵 Blau (online):** Aktive, betriebsbereite Freifunk-Knoten[cite: 1].
* **🔴 Rot (offline):** Knoten, die aktuell nicht erreichbar oder ausgeschaltet sind[cite: 1].
* **🔵🔘 Blau mit weißem Kern (uplink):** Knoten mit direkter Internetverbindung (VPN-Uplink zum Freifunk-Server)[cite: 1].

### Verbundene Clients
* **🟣 Pink:** Geräte im **2.4 GHz** WLAN-Frequenzband[cite: 1].
* **🟡 Gelb:** Geräte im **5 GHz** WLAN-Frequenzband[cite: 1].
* **🟢 Türkis (other):** Geräte mit alternativer/sonstiger Anbindung[cite: 1].

### Tipps zur Kartenbedienung
* **Zoom:** Nutze einen Doppelklick zum Hineinzoomen und `Umschalt` + Doppelklick (`Shift` + Doppelklick) zum Herauszoomen[cite: 1].
* **Filter:** Über das Suchfeld *Node filter* oben links kannst du gezielt nach bestimmten Knoten-Namen oder Standorten suchen[cite: 1].
* **Details:** Klicke auf einen einzelnen Knoten, um Details wie das Router-Modell, die Firmware-Version und die Anzahl der verbundenen Nutzer zu sehen[cite: 1].

---

## Der Netzwerkgraph (Graph-Ansicht)

Unter [map.freifunk-suedholstein.de/#/en/graph](https://map.freifunk-suedholstein.de/#/en/graph) findest du eine abstrakte, topologische Darstellung unseres Netzwerks (die **Graph-Ansicht**)[cite: 1]:

* **Unabhängig von Geografie:** Hier werden die Knoten nicht auf einer geografischen Landkarte platziert, sondern als mathematischer Graph dargestellt[cite: 1].
* **Visualisierung des Meshes:** Der Graph veranschaulicht eindrucksvoll, wie dicht das Netz verwoben ist. Du siehst sofort, welche Router als zentrale **Infrastruktur-Knotenpunkte** dienen, welche Gateways die Datenpakete weiterleiten und wie sich das WLAN-Mesh organisch über Funkverbindungen ausbreitet[cite: 1].
* **Verbindungsqualität:** Auch Knoten ohne hinterlegte Standort-Koordinaten lassen sich im Netzgraph in ihrer Struktur innerhalb des Gesamtnetzes betrachten[cite: 1].

---

## Live-Statistiken & Auslastung

Über den Reiter **Statistics** im Meshviewer erhältst du Zugriff auf weitere wichtige Netzwerkkennzahlen[cite: 1]:

* **Aktive Knoten:** Die Gesamtzahl der betriebenen Freifunk-Router in Südholstein[cite: 1].
* **Nutzer-Statistik:** Wie viele Endgeräte (Smartphones, Laptops etc.) aktuell über unser Netz surfen[cite: 1].
* **Mesh-Verbindungen (Links):** Detaillierte Übersicht über die Signalqualitäten der Funk-Verbindungen zwischen benachbarten Routern[cite: 1].

Wir betreiben auch ein Grafana, das Statistiken über unser Freifunk-Netzwerk sammelt. Ein paar ausgewähle Graphen kannst du dir hier ansehen, mehr gibt es unter [grafana.freifunk-suedholstein.de](https://grafana.freifunk-suedholstein.de)

<div style="margin: 1.5rem 0;">
  <iframe
    src="https://grafana.freifunk-suedholstein.de/d-solo/NkTKsfkik/weitere-statistiken?orgId=1&panelId=panel-8&theme=light&timezone=browser"
    style="width: 100%; height: 420px; border: 0; border-radius: 12px; background: #fff;"
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade"
    title="Grafana Dashboard - Weitere Statistiken">
  </iframe>
</div>

Hier kannst du sehen, wie viele Clients (Smartphones, Notebooks, ...) sich pro Stunde in unserem Netzwerk befanden.

<div style="margin: 1.5rem 0;">
  <iframe
    src="https://grafana.freifunk-suedholstein.de/d-solo/9mT4Bukmk/globale-statistiken?orgId=1&panelId=2&theme=light&timezone=browser"
    style="width: 100%; height: 520px; border: 0; border-radius: 12px; background: #fff;"
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade"
    title="Grafana Dashboard - Globale Statistiken">
  </iframe>
</div>

Hier siehst du wie viele Knoten (Router) und wie viele Clients sich in unserem Netzwerk befinden.

---

## Kein Freifunk auf deiner Straße?

Siehst du auf der Karte noch eine weiße Fläche in deiner Nachbarschaft? **Das kannst du ändern!**[cite: 1]

Du brauchst lediglich einen passenden, preiswerten Router, installierst unsere freie Firmware und schließt das Gerät an deinen Internetzugang an[cite: 1].

* 🚀 **[Schritt-für-Schritt-Anleitung & Einrichtungs-Guide](/loslegen/)**[cite: 1, 2]
* 💬 **Fragen zum Setup?** Komm einfach in unseren **Matrix-Kanal** oder schreib uns auf **Mastodon** – wir helfen dir gerne weiter![cite: 1, 2]