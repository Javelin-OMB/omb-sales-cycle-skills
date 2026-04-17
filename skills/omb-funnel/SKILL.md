---
name: omb-funnel
description: |
  Fase 2 van de OMB Sales Cyclus — Lead Generatie & Outreach (De Trechter). Gebruik
  deze skill wanneer de gebruiker vraagt om: likers of commenters van een LinkedIn
  post te scrapen, een outreach-campagne op te zetten, leadlijsten te maken, DM's
  te schrijven voor een groep prospects, commenters te filteren op doelgroep,
  leads te categoriseren, of zegt "oogst deze post", "fase 2", "outreach campagne",
  "scrape de likers", "DM's voor deze lijst", "filter de reactees", "welke commenters
  zijn leads". Onderdeel van de OMB Digital Marketing-Sales SOP. Taal: Nederlands.
---

# OMB Funnel — Fase 2: Lead Generatie & Outreach

**By OMB Digital · [ombdigital.io](https://www.ombdigital.io)**

Je post uit fase 1 heeft engagement. Nu komt het oogsten: wie reageerde, wie is
een échte lead, en hoe benader je ze zonder pusherig te zijn. De kracht van
fase 2 zit in **filter eerst, DM daarna** — 100 slechte DM's leveren niks op;
20 scherp-gekozen DM's leveren gesprekken.

## De trechter in 4 stappen

```
1. Scrape      →  alle likers + commenters + sharers van de post
2. Verrijken   →  functie + bedrijf + grootte + sector toevoegen
3. Filteren    →  ICP-check (doelgroep + grootte + zakelijk email)
4. Outreach    →  DM of mail, gesegmenteerd, value-first
```

## Stap 1 — Scrapen

**Tools (voorkeur → fallback):**
1. **Joobi Sales Engagement** — primair voor OMB, haalt likers/commenters +
   basisprofiel in één stap binnen. Zie [joobi.io](https://app.joobi.io/login).
2. **Phantombuster / Evaboot / TexAu** — alternatieven
3. **Sales Navigator + handmatige export** — fallback als scraper-tools niet werken

**Wat scrapen:**
- Alle **likers** (volledige lijst, niet alleen top 10)
- Alle **commenters** (met commenttekst — die gebruik je bij DM-personalisatie)
- Alle **sharers** (kleinere groep, vaak warmer dan likers)

**Output naar CSV/Sheet met kolommen:**
`naam | functie | bedrijf | bedrijfsgrootte | sector | LinkedIn URL | comment (indien) | engagement_type`

## Stap 2 — Verrijken

Voor rijen die geen functie/bedrijf hebben: zoek op LinkedIn, vul aan.
Als er zakelijke e-mail nodig is voor fase 3: **bewaar dat voor fase 3** (Lusha).
Hier hoef je nog geen telefoonnummers of mails op te halen — eerst filteren.

## Stap 3 — Filteren op ICP

**Default ICP-filters (pas aan per campagne):**

| Filter | Default | Waarom |
|---|---|---|
| Bedrijfsgrootte | **10+ medewerkers** | Kleinere bedrijven hebben geen budget/need |
| Functie-niveau | Beslissers (founder, director, manager, head of) | IC's besluiten niet over budget |
| Email-type | Zakelijk (geen gmail/hotmail/ziggo/live/info@) | Info@-adressen zijn dood |
| Sector | Match doelgroep | Zie intake fase 1 |
| Regio | NL/BE default, EN internationaal | Taalmatch |

**Commenter-bonus:** iemand die commentte is ~5× warmer dan een liker. Behandel
commenters apart → hogere prioriteit in de outreach-volgorde.

## Stap 4 — Outreach

### DM-structuur (LinkedIn)

Gebruik een **3-stappen sequentie**, nooit 1-shot:

**Bericht 1 — connect request (of eerste DM als al connected):**
```
Hi [voornaam],

Zag dat je reageerde op mijn post over [onderwerp]. [1 regel die iets
persoonlijks uit hun comment haakt — geen generieke flattery].

Ben benieuwd hoe jij er bij [bedrijfsnaam] mee omgaat.

[ondertekening]
```

**Bericht 2 — na accept, 1-2 dagen later:**
Stuur de **waarde** uit de post (PDF / tool / template / checklist). Geen pitch.
```
Hi [voornaam], beloofd is beloofd — hier is [asset].
Laat me weten wat je ervan vindt.
```

**Bericht 3 — na 3-5 dagen, alleen als ze reageerden op bericht 2:**
Zachte CTA, peilen naar fit.
```
Blij dat 'ie nuttig was. Zou het passen als we 20 min bellen om te kijken
hoe [hun situatie] te verbeteren? Geen pitch — gewoon sparren.
```

### E-mail alternatief

Als je zakelijke e-mails hebt (uit Lusha / Apollo / handmatig): e-mail werkt
sterker voor 40+ doelgroepen. Zelfde 3-staps sequentie, andere vorm.

### Segmenteren

Niet iedereen krijgt hetzelfde bericht. Segmenteer minstens op:

- **Warm (commentte)** vs **koel (likete)** — warm krijgt vrijer bericht
- **Beslisser** vs **influencer** — beslisser krijgt directer aanbod
- **ICP-perfect** vs **ICP-rand** — perfect krijgt persoonlijker, rand krijgt
  auto-sequentie

## Lead-categorisering (voor fase 3)

Na bericht 2-3 heb je drie emmers:

| Emmer | Signaal | Actie |
|---|---|---|
| 🔥 **Hot** | Antwoordt + stelt vragen / vraagt call | Direct door naar fase 3 (HubSpot + bellen) |
| 🟡 **Warm** | Leest asset, like reactie | Nurture — zet in fase 1 content-loop + retarget |
| ⚪ **Koud** | Geen reactie op bericht 2 of 3 | Wachten, retry over 3 maanden met ander aanbod |

## Output die deze skill levert

Wanneer ingeroepen, lever:

1. **Scraping-instructies** — welk tool + exacte stappen
2. **Filtered lead-lijst** — CSV-achtig met gefilterde rijen + reden van filter
3. **Outreach-templates** — bericht 1, 2, 3 ingevuld per segment
4. **Prioriteits-volgorde** — welke leads eerst benaderen
5. **Next-step prompt** — "Verstuur bericht 1 via Joobi/LinkedIn. Zodra je
   hot replies hebt: zeg 'fase 3' en geef de namen → we zetten ze in HubSpot."

## Volume-richtlijn

- **~20-50 DMs per dag per account** (anders LinkedIn-flag)
- **Spreid over de week** — niet alles in 1 dag
- **Track response-rate:** <10% = bericht zwak, herschrijven

## Compliance

- Geen gekochte lijsten
- Geen mass-mail zonder opt-out (AVG/GDPR)
- Zakelijke context altijd duidelijk in eerste bericht
- Unsubscribe-optie in elke e-mail-sequentie

## Geen tijd? OMB doet 't voor je.

OMB Digital runt complete LinkedIn outreach-campagnes: scraping, schrijven,
versturen, opvolgen. Boek een call via
[ombdigital.io/meetings/tom-spoor1](https://ombdigital.io/meetings/tom-spoor1).

---

**Volgende fase:** hot replies → skill `omb-contact` voor HubSpot-import,
Lusha-verrijking, en belvoorbereiding.
