#!/usr/bin/env bash
# OMB Sales Cycle Skills — installer
# Symlinks the skills in ./skills/ into ~/.claude/skills/ so Claude Code picks them up.
# Usage:
#   ./install.sh              install / update symlinks
#   ./install.sh --uninstall  remove the symlinks

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
SKILLS_DST="$HOME/.claude/skills"

SKILLS=(omb-sales-cycle omb-hook omb-funnel omb-contact omb-voiceloop)

say() { printf "\033[1;34m[omb]\033[0m %s\n" "$*"; }
err() { printf "\033[1;31m[omb]\033[0m %s\n" "$*" >&2; }

if [[ ! -d "$SKILLS_SRC" ]]; then
  err "Skills folder not found at $SKILLS_SRC. Are you running from the repo root?"
  exit 1
fi

mkdir -p "$SKILLS_DST"

if [[ "${1:-}" == "--uninstall" ]]; then
  say "Uninstalling OMB Sales Cycle skills..."
  for skill in "${SKILLS[@]}"; do
    target="$SKILLS_DST/$skill"
    if [[ -L "$target" ]]; then
      rm "$target"
      say "  removed symlink: $target"
    elif [[ -e "$target" ]]; then
      err "  skipped $target (not a symlink — remove manually if you want)"
    fi
  done
  say "Done. Restart Claude Code."
  exit 0
fi

say "Installing OMB Sales Cycle skills into $SKILLS_DST"
for skill in "${SKILLS[@]}"; do
  src="$SKILLS_SRC/$skill"
  dst="$SKILLS_DST/$skill"
  if [[ ! -d "$src" ]]; then
    err "  missing source: $src"
    continue
  fi
  if [[ -L "$dst" ]]; then
    rm "$dst"
  elif [[ -e "$dst" ]]; then
    err "  $dst exists and is not a symlink. Move or delete it first, then re-run."
    exit 1
  fi
  ln -s "$src" "$dst"
  say "  linked $skill"
done

cat <<EOF

[omb] Done. Installed skills:
  - omb-sales-cycle  (orchestrator)
  - omb-hook         (Phase 1: content & hook)
  - omb-funnel       (Phase 2: lead generation)
  - omb-contact      (Phase 3: sales & conversion)
  - omb-voiceloop    (Phase 4: voice loop + repurposing)

Restart Claude Code (or start a new session) to pick them up.
Then just ask, e.g.:
  "draai een linkedin campagne over AI voor makelaars"
  "maak een outreach lijst van deze post: <url>"
  "transcribeer deze opname en maak er een klantmail van"

Updates: 'git pull' inside this repo — no re-install needed (symlinks!).
Uninstall: './install.sh --uninstall'

Questions? https://www.ombdigital.io  |  tom.spoor@ombdigital.io
EOF
