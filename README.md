# OMB Sales Cycle Skills for Claude

> The complete Marketing → Sales → Voice Loop system as Claude Code skills.
> Built by [OMB Digital](https://www.ombdigital.io) — the Claude + Sales agency.

![SOP Diagram](assets/sop-diagram.png)

This is the exact SOP OMB Digital uses to turn LinkedIn engagement into qualified
leads and closed deals, packaged as 5 modular [Claude Code skills](https://docs.claude.com/en/docs/claude-code/skills).
Install the full cycle or just the phase you need.

---

## What's inside

| Skill | Phase | What it does |
|---|---|---|
| `omb-sales-cycle` | Orchestrator | Runs all 4 phases end-to-end |
| `omb-hook` | 1. Content & Attractie | LinkedIn posts (PAS method) + AI Journalist + boost timing |
| `omb-funnel` | 2. Lead Generatie & Outreach | Scrape likers/commenters → filter → outreach campaign |
| `omb-contact` | 3. Sales & Acquisitie | HubSpot + Lusha enrichment + call script + conversion |
| `omb-voiceloop` | 4. Automatisering & Repurposing | Joobi voice recorder → transcript → mail/Gamma/repurposed posts |

Skills are standalone — use one, some, or all.

---

## Install

**Requires:** [Claude Code](https://claude.com/claude-code) installed.

```bash
git clone https://github.com/Javelin-OMB/omb-sales-cycle-skills.git
cd omb-sales-cycle-skills
./install.sh
```

The installer symlinks the skills into `~/.claude/skills/`. Restart Claude Code
and the skills activate automatically when you mention the triggers (e.g.
"draai een LinkedIn campagne", "maak een outreach lijst", "transcribeer deze opname").

**Update:** `git pull` inside the cloned folder. No re-install needed.

**Uninstall:** `./install.sh --uninstall`

---

## Recommended stack

These skills work best with the tools OMB Digital uses:

- **LinkedIn** — posts & boosting
- **[Joobi Sales Engagement](https://www.joobi.io)** — scraping likers/commenters + outreach
- **HubSpot** — CRM (via Claude's HubSpot MCP)
- **Lusha** — phone number enrichment
- **Joobi Voice Recorder** — call/meeting capture
- **Gamma** — AI presentations (via Gamma MCP)

Skills fall back to generic instructions if you don't have a specific tool — but
the recommended stack is what delivers the best results.

---

## Using this for your own company / agency

This skill set is **branded on OMB Digital** because that's where we run it —
but the methodology works for any B2B sales team. The MIT license explicitly
lets you fork, rebrand, and redistribute. **You don't need to ask permission.**
Just do it.

### Quickest path (~15 minutes)

1. **Fork this repo.** Click the "Fork" button top-right of this page — put it
   under your own GitHub account or company org.

2. **Clone your fork locally:**
   ```bash
   git clone https://github.com/YOUR-USERNAME/omb-sales-cycle-skills.git
   cd omb-sales-cycle-skills
   ```

3. **Find & replace OMB references** with your own branding. In VS Code:
   `Cmd+Shift+H` (or your editor's "Replace in files"):

   | Find | Replace with |
   |---|---|
   | `OMB Digital` | Your company name |
   | `ombdigital.io` | Your domain |
   | `tom.spoor@ombdigital.io` | Your email |
   | `ombdigital.io/meetings/tom-spoor1` | Your booking link |
   | `Joobi.ai` / `joobi.io` | Remove, or replace with your AI product |
   | `Tom Spoor` / `Caspar Fraiture` | Your team names (or remove) |
   | `Javelin-OMB` | Your GitHub username/org |

4. **Rename the skills** (recommended — avoids name conflicts if people
   install both):
   - Rename folders: `omb-sales-cycle` → `yourco-sales-cycle`, and the same for
     `omb-hook`, `omb-funnel`, `omb-contact`, `omb-voiceloop`
   - Update the `name:` field in each `SKILL.md` frontmatter to match
   - Update the `SKILLS=(...)` array in `install.sh`

5. **Commit & push to your own repo:**
   ```bash
   git add -A
   git commit -m "Rebrand for YOUR-COMPANY"
   git push
   ```

6. **Share the install one-liner with your team/audience:**
   ```bash
   git clone https://github.com/YOUR-USERNAME/YOUR-REPO.git && \
     cd YOUR-REPO && ./install.sh
   ```

Done. Your sales cycle, your branding, your CTAs everywhere.

### Staying in sync (optional)

If you want to pull in OMB's future improvements to the methodology:

```bash
git remote add upstream https://github.com/Javelin-OMB/omb-sales-cycle-skills.git
git fetch upstream
git merge upstream/main   # cherry-pick what fits; skip our brand-specific commits
```

### No need to ask

Seriously — we get it, you're busy. No permission needed, no "can I use this
for client X" email required. **MIT license = use it, modify it, sell the
services built on top of it.** A link back to this repo in your README is a
nice gesture, not a requirement.

Questions about the **methodology itself** (not about permission)? Open an
issue — happy to help.

---

## Want OMB to run this for you?

These skills teach Claude **how** to do it. If you'd rather have a team
**execute** it end-to-end, three doors:

- 🎯 **[LinkedIn Outreach Campaigns](https://www.ombdigital.io)** — we run the full cycle as a service
- 📞 **[Joobi.ai Voice Agents](https://www.joobi.io)** — 24/7 AI phone assistant for your business
- 🎙️ **AI Journalist setup** — we install the content-loop that turns your voice into weekly posts, mails, and decks

Book: [ombdigital.io/meetings/tom-spoor1](https://ombdigital.io/meetings/tom-spoor1)

---

## Philosophy

Most "AI sales" tools automate the wrong part. The magic isn't in sending 500
messages — it's in the **loop**: one captured conversation becomes a post, a
mail, a proposal, a deck, and the next campaign hook. These skills enforce that
loop so nothing your brain produces gets thrown away.

---

## License

MIT — use it, fork it, remix it. Attribution to OMB Digital appreciated but
not required.

## Credits

Built by [Tom Spoor](https://www.linkedin.com/in/tomspoor) & the OMB Digital team.
SOP originally developed for OMB Digital + Joobi.ai internal sales ops.

Questions / issues / ideas: [open an issue](https://github.com/Javelin-OMB/omb-sales-cycle-skills/issues)
or mail tom.spoor@ombdigital.io.
