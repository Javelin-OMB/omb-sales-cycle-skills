---
name: omb-voiceloop
description: |
  Fase 4 van de OMB Sales Cyclus — Automatisering & Repurposing (De Voice Loop).
  Gebruik deze skill wanneer de gebruiker een opname, transcript of gespreksnotities
  aanlevert en daar output uit wil: follow-up mail, offerte, gespreksverslag,
  Gamma-presentatie, OF nieuwe LinkedIn posts. Ook triggeren bij: "transcribeer
  deze opname", "fase 4", "voice loop", "verwerk dit gesprek", "maak offerte van
  deze call", "mail na dit gesprek", "gamma deck van dit gesprek", "spoor A" (sales
  support) of "spoor B" (content marketing), "van opname naar post", "joobi recorder
  output". Onderdeel van de OMB Digital Marketing-Sales SOP. Taal: Nederlands.
---

# OMB Voice Loop — Fase 4: Automatisering & Repurposing

**By OMB Digital · [ombdigital.io](https://www.ombdigital.io)**

Dit is de **geheime versneller** van de cyclus. Elk gesprek dat je voert zit vol
waarde die normaal verdampt zodra je ophangt: de exacte woorden van de klant,
bezwaren, wensen, jouw eigen inzichten. De Voice Loop vangt dat op en zet het
tweeledig uit:

- **Spoor A — Sales Support** (voor dit specifieke deal): mail, offerte, verslag, deck
- **Spoor B — Content Marketing** (voor toekomstige deals): nieuwe LinkedIn posts

Zo wordt elk 30-min gesprek = 4+ assets + 1-2 nieuwe hooks voor fase 1.

## De flow

```
Joobi Voice Recorder (opname)
         │
         ▼
   Transcript (AI) ── structured summary
         │
         ├──▶ SPOOR A: Sales Support
         │      ├── Follow-up mail (template)
         │      ├── Offerte / voorstel
         │      ├── Gespreksverslag (intern)
         │      └── Gamma-deck (voor vervolg)
         │
         └──▶ SPOOR B: Content Marketing
                ├── 1-3 LinkedIn post-hooks
                ├── Quote-cards (klantwoorden)
                └── Case study-draft
```

## Stap 1 — Opname

**Tool:** **[Joobi Voice Recorder](https://www.joobi.io)** — primair voor OMB.
Hij neemt op, transcribeert, en levert output direct AI-klaar.

**Alternatieven:** native phone recorder, Zoom-recording, Otter.ai, Rev, Whisper
(OpenAI), MacWhisper lokaal.

**Compliance:** vraag altijd toestemming. "Is 't oké als ik ons gesprek opneem
voor mijn eigen notities? Ik deel 'm met niemand anders." = simpel en 99%
goedkeuring.

**Input voor deze skill:** upload/deel
- Het **audio-bestand** (als Claude 't kan verwerken via tool), OF
- Het **transcript** (plain text, bij voorkeur met sprekerlabels)

## Stap 2 — Structured summary

Eerst transcripten → gestructureerd maken. Extract:

| Veld | Wat eruit halen |
|---|---|
| **Klant-situatie** | Hun bedrijf, rol, waar ze staan |
| **Pijnpunten** | Exacte woorden waar ze frustratie uiten |
| **Wensen** | Waar willen ze heen, wat is success |
| **Bezwaren** | Wat hield ze tot nu toe tegen |
| **Budget/tijd-signalen** | Aanwijzingen over timing + investment-bereidheid |
| **Quotes** | Letterlijke zinnen die raak zijn (goud voor spoor B) |
| **Next steps** | Wat afgesproken, wie doet wat wanneer |

Dit is de bron voor **beide sporen**.

---

## SPOOR A — Sales Support

### A1. Follow-up mail (altijd maken)

Verstuur binnen 2 uur na het gesprek (response-rate halveert na 24u).

**Structuur:**
```
Subject: Follow-up ons gesprek — [specifiek woord uit gesprek]

Hoi [voornaam],

Dank voor het gesprek net. Korte samenvatting voor je records:

Wat je nu tegen komt:
- [pijnpunt 1 in hun eigen woorden]
- [pijnpunt 2]

Wat je wil:
- [wens 1]

Wat we afspraken:
- [next step met datum]

Voor zover dit resoneert — laat 't me weten. Als iets niet klopt,
corrigeer me gerust.

[ondertekening]
```

Geen pitch, geen attachment. **Herhaal hun woorden** zodat ze zich gehoord voelen.

### A2. Offerte / voorstel (als er fit is)

Genereer een voorstel op basis van de wensen uit het gesprek. Structuur:

1. **Wat je begreep** (hun probleem in hun woorden — laat zien dat je luisterde)
2. **Voorgestelde aanpak** (3-4 stappen, niet meer)
3. **Wat het oplevert** (zo concreet mogelijk, liefst met KPI)
4. **Investering** (meerdere opties — goed/beter/best werkt vaak beter dan 1 prijs)
5. **Timeline** (duidelijke start + milestones)
6. **Volgende stap** (niet "laat me weten" maar "zeg ja → we starten maandag")

Gebruik jouw brand-templates als beschikbaar (voor OMB: `omb-brand` skill).

### A3. Intern gespreksverslag (voor je team / CRM)

Kort, feitelijk, geen marketing-taal. In HubSpot plakken als note op de deal.

```
Gesprek met [naam, bedrijf, datum]

SITUATIE: [3 regels]
PIJNPUNTEN: [bullets]
WENSEN: [bullets]
BEZWAREN: [bullets]
BUDGET-SIGNAAL: [inschatting]
NEXT STEP: [actie + deadline + owner]
LIKELIHOOD: [hoog/middel/laag + reden]
```

### A4. Gamma-presentatie (optioneel, voor formele vervolgafspraak)

Als er een demo/discovery-call 2 gepland is, genereer via **Gamma MCP** (als
beschikbaar) een deck met:
- Slide 1: "Wat we van je begrepen" (hun woorden)
- Slide 2-4: aanpak (uit offerte)
- Slide 5: ROI / outcome
- Slide 6: investering + start

Dit laat een professionaliteit-niveau zien dat 95% van concurrenten niet haalt.

---

## SPOOR B — Content Marketing

### B1. Post-hooks uit het gesprek

Scan het transcript op zinnen die:
- **Een specifieke pijn benoemen** die breder in de markt speelt
- **Een contrarian observatie** van de klant of jou bevatten
- **Een verrassend getal** noemen
- **Een concreet voorbeeld** geven van wat niet werkt

Elk van die zinnen = potentiële hook voor fase 1. Lever **3 post-ideeën**:

```
Idee 1: [hook-regel]
Pijn: [wat is de pijn, in welke groep]
Solution: [insight, niet je product]
CTA-woord: [welk woord zou men achterlaten]

Idee 2: ...
Idee 3: ...
```

Kies de sterkste → input voor `omb-hook` skill → terug naar fase 1.

### B2. Quote-cards

Letterlijke klant-quotes (geanonimiseerd als nodig) → visueel template voor
LinkedIn carrousel of losse beeld-post. Voorbeeld:

> "Ik wist wel dat we [probleem] hadden, maar pas toen jullie het zo framden
> besefte ik dat het ons €X per maand kost."

Super krachtig social proof.

### B3. Case study-draft

Als het gesprek leidt tot een deal → 30 dagen later: vraag klant om
case-toestemming, werk transcript + resultaten uit tot case study (500-800 woorden).

## Output die deze skill levert

Wanneer ingeroepen met een opname/transcript, lever **default beide sporen**
tenzij de gebruiker één spoor aanvraagt:

1. **Structured summary** (het fundament)
2. **Spoor A:** mail-draft + offerte-outline + intern verslag + (optioneel) Gamma-deck
3. **Spoor B:** 3 post-ideeën + quote-cards + case-study draft (indien fit)
4. **HubSpot-update-instructies** (welke velden bijwerken, welke taak aanmaken)
5. **Loop-sluiter-prompt:** "Spoor B idee [X] was 't sterkst → activeer
   `omb-hook` om er een post van te maken voor de volgende campagne."

## Privacy

- **Toestemming vooraf.** Geen opname zonder 'ja'.
- **Klant-data:** zorg dat transcripten versleuteld opgeslagen zijn; deel ze niet
  extern zonder noodzaak.
- **Anonimiseer** voor spoor B als de klant niet expliciet toestemming heeft
  voor naamsvermelding.

## Geen tijd om dit zelf op te zetten?

OMB Digital installeert de complete Voice Loop voor je team: Joobi Recorder +
AI-workflow + HubSpot-koppeling + content-repurposing. Één keer opzetten,
automatisch drie assets per gesprek.

[ombdigital.io/meetings/tom-spoor1](https://ombdigital.io/meetings/tom-spoor1)

---

**De loop sluit:** spoor B → `omb-hook` (fase 1) → de cyclus begint opnieuw.
Welkom in het vliegwiel.
