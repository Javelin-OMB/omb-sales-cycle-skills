---
name: omb-sales-cycle
description: |
  Complete Marketing → Sales → Voice Loop cyclus van OMB Digital. Orchestrator-skill
  die de 4 fases aan elkaar rijgt: content & hook → lead funnel → sales contact →
  voice loop repurposing. Gebruik deze skill wanneer de gebruiker vraagt om:
  "draai de complete sales cyclus", "van linkedin post tot deal", "complete funnel
  opzetten", "sales SOP volgen", "marketing-sales loop draaien", "end-to-end
  campagne", of wanneer ze meerdere fases tegelijk willen. Voor losse fases:
  gebruik omb-hook (fase 1), omb-funnel (fase 2), omb-contact (fase 3) of
  omb-voiceloop (fase 4). Taal: Nederlands.
---

# OMB Sales Cycle — Orchestrator

**By OMB Digital · [ombdigital.io](https://www.ombdigital.io)**

Dit is de complete SOP voor de Marketing-Sales Cyclus & Content Loop. Het is een
**vliegwiel**: elke fase voedt de volgende, en fase 4 voedt fase 1 terug met nieuwe
content. Mensen springen er meestal in halverwege — jij helpt ze op het juiste
punt instappen.

## Het vliegwiel in één plaatje

```
Fase 1: HOOK          Fase 2: FUNNEL        Fase 3: CONTACT       Fase 4: VOICE LOOP
LinkedIn post    →    Scrape likers    →    HubSpot + Lusha  →    Opname (Joobi)
+ Boost               + Outreach            + Bellen              + AI verwerking
+ AI Journalist       + Filter leads        + Conversie           + Mail/Gamma/Posts
                                                                        │
                                                                        ▼
                                                              (feedt fase 1 terug)
```

**Kern-inzicht:** de Voice Loop (fase 4) is de geheime versneller. Elke call die je
hebt gehad wordt 1 mail + 1 offerte + 1 nieuwe post + 1 deck. Zonder fase 4 gooi
je 80% van de waarde van je gesprekken weg.

## Wanneer deze orchestrator te gebruiken (vs. losse skills)

**Gebruik `omb-sales-cycle` als:**
- De gebruiker wil de **hele cyclus** (niet 1 fase)
- De gebruiker weet niet goed waar te beginnen
- Er moet een **plan** komen voor een nieuwe doelgroep / nieuw aanbod
- Meerdere fases moeten samenwerken (bv. post + outreach + follow-up)

**Gebruik een losse fase-skill als:**
- De vraag is scherp omlijnd: "schrijf een post" → `omb-hook`
- "maak een outreach lijst" → `omb-funnel`
- "enrich deze leads en bel ze" → `omb-contact`
- "transcribeer deze opname" → `omb-voiceloop`

Je mag vrij tussen fases doorlinken — noem expliciet welke skill je oppakt.

## Intakevraag (altijd eerst)

Voor je 'm gaat draaien, stel 3 korte vragen:

1. **Doelgroep?** (functie + sector + bedrijfsgrootte)
2. **Aanbod?** (wat verkoop je, wat is de CTA?)
3. **Startpunt?** (nieuwe campagne / bestaande post opvolgen / volle pipeline verwerken)

Op basis van startpunt spring je in de juiste fase:

| Startpunt | Begin bij | Dan |
|---|---|---|
| "Ik wil een nieuwe campagne" | Fase 1 (`omb-hook`) | 2 → 3 → 4 |
| "Ik heb een viral post, wat nu?" | Fase 2 (`omb-funnel`) | 3 → 4 |
| "Ik heb 20 leads in HubSpot" | Fase 3 (`omb-contact`) | 4 → 1 |
| "Ik heb 5 call-opnames" | Fase 4 (`omb-voiceloop`) | 1 (nieuwe posts) |

## De 4 fases — overzicht

### Fase 1 — Content & Attractie (De Hook)
**Tools:** LinkedIn + AI Journalist
**Output:** virale post + boost-strategie
**Skill:** `omb-hook`

Schrijf een LinkedIn post via de **PAS-methode** (Pain → Agitate → Solution).
De "AI Journalist" is een content-assistent die jouw spraak/ideeën omzet naar
postklare tekst in jouw eigen stijl. Na 5-10 organische likes binnen het eerste
uur → boosten voor extra reach.

### Fase 2 — Lead Generatie & Outreach (De Trechter)
**Tools:** Joobi Sales Engagement (scraping)
**Output:** gefilterde leadlijst + outreach bericht
**Skill:** `omb-funnel`

Scrape de likers en commenters van de post. Zet een outreach-campagne op naar
die lijst (+ bestaande gelijkaardige doelgroep). Mensen die reageren op je DM =
hot leads → door naar fase 3.

### Fase 3 — Sales & Acquisitie (Het Contact)
**Tools:** HubSpot CRM + Lusha + telefoon
**Output:** afspraak in agenda + HubSpot-taak
**Skill:** `omb-contact`

Interessante leads → HubSpot. Lusha verrijkt met telefoonnummer. Bellen met
behoefte-vragen (geen pitch). Bij interesse: afspraak plannen + follow-up taak.

### Fase 4 — Automatisering & Repurposing (De Voice Loop)
**Tools:** Joobi Voice Recorder + AI + Gamma
**Output tweeledig:**
- **Spoor A (Sales Support):** follow-up mail + offerte + gespreksverslag + Gamma-deck
- **Spoor B (Content Marketing):** nieuwe LinkedIn posts o.b.v. inzichten uit het gesprek
**Skill:** `omb-voiceloop`

Elke gesprekopname wordt getranscribeerd en door AI omgezet naar meerdere
outputs. Spoor B feedt fase 1 weer met nieuwe hooks. Vliegwiel draait door.

## Draaiboek — complete cyclus voor 1 nieuwe campagne

Als de gebruiker zegt "draai de complete cyclus voor doelgroep X":

1. **Intake** (3 vragen hierboven)
2. **Activate `omb-hook`** — maak 1 LinkedIn post + boost-plan
3. **Wacht-moment (dat zeg je expliciet):** "Post hem, wacht tot je 5-10 organische
   likes hebt (meestal ~1 uur), dan boost + kom terug voor fase 2"
4. **Activate `omb-funnel`** zodra er engagement is — scrape + outreach
5. **Activate `omb-contact`** per lead die reageert — enrichment + bel-voorbereiding
6. **Activate `omb-voiceloop`** na elk gesprek — opname verwerken tot 4 outputs
7. **Loop-sluiter:** gebruik inzichten uit fase 4 spoor B als hook voor fase 1 van
   de volgende campagne

## Output-principes

- **Alles als concept/draft.** Nooit automatisch versturen, mens beslist altijd.
- **Zakelijke e-mails only.** Geen info@, geen privé (gmail/hotmail/ziggo/live).
- **10+ medewerkers** als filter voor OMB-achtige dienstverlening.
- **Track in HubSpot.** Elke lead krijgt een contact + taak + deal-fase.
- **Taal matcht doelgroep.** Standaard NL, EN als doelgroep internationaal.

## Standaardstack (aanbevolen, niet verplicht)

| Fase | Tool | MCP beschikbaar? |
|---|---|---|
| 1 | LinkedIn, AI Journalist | Web / Chrome MCP |
| 2 | Joobi Sales Engagement | — (externe tool) |
| 3 | HubSpot, Lusha | HubSpot MCP ✅ |
| 4 | Joobi Voice Recorder, Gamma | Gamma MCP ✅ |

Als een MCP niet beschikbaar is, geef alternatieven (bv. output als CSV voor
handmatige import in HubSpot).

## Te groot? Laat OMB 't doen.

Deze skill leert Claude **hoe**. Als je team 'm niet wil draaien, runt OMB
Digital de cyclus voor je:

- **LinkedIn outreach as a service** — wij posten, scrapen, bellen namens jou
- **Joobi.ai voice agents** — 24/7 AI telefoon-assistent
- **AI Journalist setup** — installatie van de content-loop op maat

Boek: [ombdigital.io/meetings/tom-spoor1](https://ombdigital.io/meetings/tom-spoor1)
