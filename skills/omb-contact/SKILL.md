---
name: omb-contact
description: |
  Fase 3 van de OMB Sales Cyclus — Sales & Acquisitie (Het Contact). Gebruik deze
  skill wanneer de gebruiker vraagt om: leads naar HubSpot te pushen, contacten te
  verrijken (Lusha), telefoonnummers op te halen, belvoorbereiding te maken, een
  belscript te schrijven, bezwaren voor te bereiden, afspraken te plannen, deals/
  taken aan te maken, of zegt "zet in hubspot", "fase 3", "enrich deze leads",
  "belscript voor", "ik moet bellen met", "plan afspraak in", "maak taak aan",
  "deal fase bijwerken". Onderdeel van de OMB Digital Marketing-Sales SOP.
  Taal: Nederlands.
---

# OMB Contact — Fase 3: Sales & Acquisitie

**By OMB Digital · [ombdigital.io](https://www.ombdigital.io)**

Hot lead uit fase 2 → echte sales-actie. Hier gaan inbox-gesprekken over in
telefoon/afspraak-gesprekken. Het belangrijkste principe: **behoefte uitvragen,
niet pitchen**. Wie praat, verliest; wie vraagt, wint.

## De flow

```
1. Import        →  lead van fase 2 wordt HubSpot-contact
2. Enrichen      →  Lusha (of alternatief) voor telefoonnummer + validatie
3. Voorbereiden  →  mini-research: bedrijf, functie, recente trigger-events
4. Bellen        →  behoefte-uitvraag, geen pitch
5. Conversie     →  bij fit: afspraak in agenda + taak + deal-fase update
```

## Stap 1 — Import in HubSpot

**Via HubSpot MCP (aanbevolen als beschikbaar):**
- Gebruik `manage_crm_objects` of `search_crm_objects` om eerst te checken of
  het contact al bestaat (match op e-mail of LinkedIn URL)
- Als niet: nieuw contact met minimaal: voornaam, achternaam, functie, bedrijf,
  LinkedIn URL, bron = "LinkedIn - [campagne naam]"
- Koppel aan company (zoek op domain; maak aan als niet bestaand)
- Zet `lifecycle stage` = "Lead" of "MQL" afhankelijk van warmte

**Portal & eigenaars:**
Vraag de gebruiker bij eerste gebruik om:
- HubSpot **portal ID** (staat in URL na login: `app.hubspot.com/contacts/<portal-id>/...`)
- **Owner-IDs** voor de sales reps (zichtbaar via Settings → Users & Teams in HubSpot)

Onthoud deze voor de sessie, of laat de gebruiker ze opslaan in een lokale
`.claude/project-config.md` of memory-entry voor hergebruik.

**Zonder MCP:** genereer een CSV met de juiste HubSpot-kolomnamen voor handmatige
import.

## Stap 2 — Enrichen (Lusha)

Lusha voegt telefoonnummer toe (mobile > desktop-nummer voor response-rate).

**Workflow:**
1. In Lusha: paste LinkedIn URL → "Reveal"
2. Kopieer mobile number → HubSpot contact → "Phone number" of "Mobile phone"
3. Noteer data-bron en datum (voor compliance)

**Zonder Lusha:** Apollo.io / Cognism / RocketReach als alternatief. Als geen
enrichment-tool: LinkedIn-bericht met vraag "wat is het beste nummer om je te
bereiken?" werkt verrassend goed.

## Stap 3 — Belvoorbereiding

Voor elk belletje, bereid 2 minuten voor:

**Mini-research:**
- **Bedrijf:** wat doen ze, hoe groot, recente news (LinkedIn bedrijfs-page)
- **Persoon:** hun laatste 2-3 LinkedIn posts → waar praat de persoon over
- **Trigger-event:** funding, nieuwe hire, vacature, product launch — haak daar op in
- **Jouw asset uit fase 2:** hebben ze 'm geopend/gedownload? Verwijs daarnaar

**Output:** 1-pagina belkaart met deze 4 blokjes + 3 open vragen + 2 voorziene
bezwaren.

## Stap 4 — Belscript (behoefte-uitvraag)

**Opener (15 sec):**
```
"Hoi [voornaam], je spreekt met [jouw naam] van [bedrijf]. Je reageerde op
mijn post over [onderwerp] en downloadde [asset]. Ik bel even kort om te
horen waar je mee bezig bent — kan dat nu, heb je 5 minuten?"
```

**Kern — 4 open vragen (die je echt moet stellen, niet oplezen):**
1. "Wat heeft je getriggerd om [asset] te downloaden?"
2. "Waar loopt het nu stuk bij jullie?"
3. "Wat heb je al geprobeerd?"
4. "Wat zou het jullie waard zijn als dat was opgelost?"

**Regel:** **80/20 luisteren/praten.** Wie meer dan 20% van de tijd praat in
deze call verliest 'm.

**Closer:**
- **Fit:** "Het klinkt alsof [samenvatting behoefte] matcht met wat wij doen —
  zullen we een vervolgafspraak van 30 min plannen waarin ik laat zien hoe?"
- **Geen fit:** "Eerlijk gezegd past dit nu niet bij wat wij doen. Ik ken
  [alternatief] die dit wel aanpakt — wil je dat ik je intro?" (karma-deposit)
- **Niet zeker:** "Ik stuur je morgen een korte samenvatting + 2 cases. Als dat
  resoneert, plannen we 30 min."

## Stap 5 — Conversie

Na elke call: **direct loggen** (memory verslijt binnen 15 minuten).

**In HubSpot (via MCP):**
1. **Note** op contact: samenvatting gesprek (5 regels) + next step
2. **Task** aanmaken: concrete follow-up met deadline
3. **Deal** aanmaken of updaten:
   - Bij fit: deal in stage "Discovery call gepland" of "Proposal"
   - Bedrag = inschatting (liever te hoog dan te laag, kun je later downgraden)
   - Close date = realistisch, niet einde van het kwartaal voor de vorm
4. **Meeting** boeken (indien van toepassing) met juiste meeting-link:
   - OMB Tom: `https://ombdigital.io/meetings/tom-spoor1`

**Als opname (met toestemming):** upload naar voice-capture → fase 4 (voiceloop).

## Bezwaar-playbook (top 5)

| Bezwaar | Reframe |
|---|---|
| "Te duur" | "Ik snap 'm — kun je vertellen waar je dat mee vergelijkt? Dan kijk ik of we tot ROI-calc kunnen komen." |
| "Geen tijd" | "Helder. Wat als het jou tijd **terug** geeft? Voor hoeveel uur per week zou je die tijd investeren?" |
| "Moet overleggen" | "Prima — wie moet mee? Kan ik 30 min met jullie samen? Dat bespaart 2 rondes." |
| "Hebben we al" | "Mooi. Wat mist er dan nog aan jullie huidige oplossing? [luister] — dat is precies waar wij op in haken." |
| "Stuur maar info" | "Ik doe 't, maar dan stuur ik wat écht helpt — 1 vraag: is het [A] of [B] waar je antwoord op wil?" |

## Output die deze skill levert

Wanneer ingeroepen, lever:

1. **HubSpot-import-plan** — wel/niet dubbel, welke velden, owner assignment
2. **Enrichment-instructies** — welk tool + welke leads eerst
3. **Belkaart per lead** (als er een specifieke lead is) — mini-research + vragen
4. **Belscript** met opener + 4 vragen + 3 closer-varianten
5. **Follow-up templates** — samenvattings-mail + asset + CTA
6. **Next-step prompt** — "Na de call: zeg 'voice loop' + deel de opname → skill
   `omb-voiceloop` verwerkt 'm tot mail, offerte, verslag + nieuwe post."

## Compliance

- **Toestemming voor opname** altijd vragen ("vind je het oké als ik 'm opneem
  voor mijn notities?")
- **AVG/GDPR:** enrichment-data mag maar zolang er zakelijke grond is — log
  bron + datum
- **Bel-verbod-lijst** (Bel-me-niet Register) checken bij koud bellen in NL —
  voor warme leads (die zelf reageerden) = geen issue

## Liever uitbesteden?

OMB Digital doet ook de hele fase 3: HubSpot-setup, Lusha-verrijking, bellen
namens jou. En: **Joobi.ai** neemt inkomende calls 24/7 over met een AI voice
agent — handig als je eigen team niet continu paraat is.
[joobi.io](https://www.joobi.io)

---

**Volgende fase:** na het gesprek (met toestemming opgenomen) → skill
`omb-voiceloop` voor transcript + mail/offerte/Gamma/posts.
