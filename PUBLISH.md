# How to publish this repo to GitHub

A 5-minute guide. Assumes you have `gh` (GitHub CLI) installed and authenticated.
If not: `brew install gh && gh auth login`.

## First time — create & push

```bash
cd /Users/awjmspoor/omb-digital/omb-sales-cycle-skills

# 1. Init git
git init
git add -A
git commit -m "Initial release — OMB Sales Cycle Skills v0.1"

# 2. Create the repo on GitHub (public) and push in one go
gh repo create Javelin-OMB/omb-sales-cycle-skills \
  --public \
  --source=. \
  --push \
  --description "The complete Marketing → Sales → Voice Loop cycle as Claude Code skills. By OMB Digital."
```

> If `ombdigital` is not your GitHub org, replace with your username
> (e.g. `tomspoor/omb-sales-cycle-skills`). You can always transfer
> to the org later via GitHub settings.

## After the first push — updates

```bash
cd /Users/awjmspoor/omb-digital/omb-sales-cycle-skills

# Edit files, then:
git add -A
git commit -m "Improve hook templates"
git push
```

Everyone who installed via `./install.sh` gets updates with `git pull` —
symlinks mean no re-install.

## Add the SOP diagram

Copy the SOP diagram you already have into `assets/sop-diagram.png`:

```bash
cp /path/to/sop-diagram.png assets/sop-diagram.png
git add assets/sop-diagram.png
git commit -m "Add SOP diagram to README"
git push
```

## Share it

Once pushed, the installer one-liner for anyone is:

```bash
git clone https://github.com/Javelin-OMB/omb-sales-cycle-skills.git && \
  cd omb-sales-cycle-skills && ./install.sh
```

Paste that in a LinkedIn post, a newsletter, on your website footer.

## Bonus — LinkedIn launch post hook ideas

Literally your fase 1 playing out. Some hook options you could try:

- *"Ik heb onze complete sales SOP — van LinkedIn post tot gesloten deal —
  als open-source Claude Code skills op GitHub gezet. Gratis. Hier is hoe 't werkt:"*
- *"Waarom geef je je salesmethode weg? Omdat de meeste bedrijven 't toch niet gaan
  uitvoeren. Wie wel serieus is, komt uiteindelijk bij ons terecht. Link in reacties."*
- *"1 GitHub repo = 4 Claude-skills die jouw LinkedIn post omzetten in gesprekken,
  deals en nieuwe content. Ik licht 'm toe in 60 sec:"*

CTA: *"Laat 'SOP' achter → ik stuur de repo-link + een install-demo video."*

Dan is fase 2 meteen ook live op deze post. Vliegwiel.

## Optional — later: Claude Code plugin marketplace

Claude Code heeft een plugin-systeem (`/plugin install`) met marketplace. Je
`plugin.json` is de stub daarvoor. Als/wanneer jullie willen publiceren daar:
zie de officiële docs → https://docs.claude.com/en/docs/claude-code/plugins.

Voor nu is de git-clone + `./install.sh` flow de simpelste en werkt 100%.
