#!/usr/bin/env bash
# rebrand.sh — strip OMB Digital branding and replace with your own company.
#
# Interactive script. Asks for your company name, domain, email, meeting link,
# and team names — then does all find/replace + skill renaming in one go.
#
# After running this, you have a fully rebranded copy of the skill set.
# Review the changes (git diff), commit, and push to your own GitHub.
#
# Usage:
#   ./rebrand.sh                 interactive (recommended)
#   ./rebrand.sh --dry-run       show what would change, no edits
#   ./rebrand.sh --undo          revert to last git commit (discards rebrand)

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DRY_RUN=false
UNDO=false

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --undo)    UNDO=true ;;
    -h|--help)
      sed -n '2,20p' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
  esac
done

say()  { printf "\033[1;34m[rebrand]\033[0m %s\n" "$*"; }
ask()  { local prompt="$1"; local default="${2:-}"; local reply
         if [[ -n "$default" ]]; then
           read -r -p "$prompt [$default]: " reply
           echo "${reply:-$default}"
         else
           read -r -p "$prompt: " reply
           echo "$reply"
         fi; }
err()  { printf "\033[1;31m[rebrand]\033[0m %s\n" "$*" >&2; }

if $UNDO; then
  say "Reverting all uncommitted changes + last commit (if any rebrand commit)..."
  cd "$REPO_DIR"
  git checkout -- .
  say "Done. If you want to undo a committed rebrand: 'git reset --hard HEAD~1' (careful!)."
  exit 0
fi

cat <<'EOF'

────────────────────────────────────────────────────────────────
  Rebrand OMB Sales Cycle Skills → Your Company
────────────────────────────────────────────────────────────────

This will replace all OMB Digital references with your own branding
across README, install.sh, plugin.json, and all 5 skills.

You can always undo with:  ./rebrand.sh --undo   (before committing)
Or review changes with:    git diff

EOF

# ─── Gather inputs ──────────────────────────────────────────────

COMPANY_NAME=$(ask "Your company name (e.g. Acme Sales Lab)")
if [[ -z "$COMPANY_NAME" ]]; then err "Company name is required."; exit 1; fi

COMPANY_DOMAIN=$(ask "Your domain (without https://, e.g. acmelab.com)")
if [[ -z "$COMPANY_DOMAIN" ]]; then err "Domain is required."; exit 1; fi

CONTACT_EMAIL=$(ask "Contact email (e.g. hello@acmelab.com)")
if [[ -z "$CONTACT_EMAIL" ]]; then err "Email is required."; exit 1; fi

MEETING_LINK=$(ask "Booking/meeting link (full URL, or leave blank)" "https://$COMPANY_DOMAIN")

GITHUB_OWNER=$(ask "Your GitHub username or org (for updated install URLs)")
if [[ -z "$GITHUB_OWNER" ]]; then err "GitHub owner is required."; exit 1; fi

REPO_NAME=$(ask "Your repo name on GitHub" "sales-cycle-skills")

SKILL_PREFIX=$(ask "Skill prefix for renamed skills (short, lowercase, no spaces)" "$(echo "$COMPANY_NAME" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:]' | cut -c1-8)")
if [[ -z "$SKILL_PREFIX" ]]; then err "Skill prefix is required."; exit 1; fi

echo
say "Optional: replace the Joobi.ai references?"
echo "   Default behavior is to REMOVE them (they're an OMB-specific product)."
echo "   If you have your own AI voice product, enter its name. Leave blank to remove."
JOOBI_REPLACEMENT=$(ask "Your AI voice product name (or blank to remove)" "")

echo
say "Optional: team names mentioned in skills (Tom Spoor, Caspar Fraiture)."
echo "   Leave blank to remove those names. Enter your name(s) to replace."
YOUR_NAME=$(ask "Your name (replaces 'Tom Spoor', or blank to remove)" "")
TEAMMATE_NAME=$(ask "Teammate name (replaces 'Caspar Fraiture', or blank to remove)" "")

# ─── Confirm ─────────────────────────────────────────────────────

cat <<EOF

────────────────────────────────────────────────────────────────
  Summary — review before continuing
────────────────────────────────────────────────────────────────
  Company name       : $COMPANY_NAME
  Domain             : $COMPANY_DOMAIN
  Email              : $CONTACT_EMAIL
  Meeting link       : $MEETING_LINK
  GitHub owner       : $GITHUB_OWNER
  Repo name          : $REPO_NAME
  Skill prefix       : $SKILL_PREFIX (skills become ${SKILL_PREFIX}-sales-cycle, ${SKILL_PREFIX}-hook, etc.)
  Joobi replacement  : ${JOOBI_REPLACEMENT:-<remove>}
  Your name          : ${YOUR_NAME:-<remove>}
  Teammate name      : ${TEAMMATE_NAME:-<remove>}
  Dry-run mode       : $DRY_RUN
────────────────────────────────────────────────────────────────

EOF

if ! $DRY_RUN; then
  read -r -p "Proceed with rebrand? (yes/no) " confirm
  if [[ "$confirm" != "yes" && "$confirm" != "y" ]]; then
    say "Aborted. No changes made."
    exit 0
  fi
fi

# ─── Replacements ────────────────────────────────────────────────

cd "$REPO_DIR"

# Files to process (exclude rebrand.sh itself + .git)
FILES=(
  README.md
  PUBLISH.md
  LICENSE
  install.sh
  plugin.json
  .gitignore
)
for skill in skills/*/SKILL.md; do FILES+=("$skill"); done

# macOS sed vs GNU sed compatibility
if [[ "$(uname)" == "Darwin" ]]; then
  SED_INPLACE=(sed -i '')
else
  SED_INPLACE=(sed -i)
fi

apply_replace() {
  local find="$1"
  local replace="$2"
  local file="$3"
  if $DRY_RUN; then
    if grep -qF "$find" "$file" 2>/dev/null; then
      echo "  [DRY] $file: '$find' → '$replace'"
    fi
  else
    "${SED_INPLACE[@]}" "s|$(printf '%s\n' "$find" | sed 's/[\/&]/\\&/g')|$(printf '%s\n' "$replace" | sed 's/[\/&]/\\&/g')|g" "$file"
  fi
}

say "Applying text replacements..."

# Build replacement map
declare -a REPLACEMENTS=(
  "ombdigital.io/meetings/tom-spoor1|$(echo "$MEETING_LINK" | sed 's|https://||')"
  "https://www.ombdigital.io|https://$COMPANY_DOMAIN"
  "https://ombdigital.io|https://$COMPANY_DOMAIN"
  "www.ombdigital.io|$COMPANY_DOMAIN"
  "ombdigital.io|$COMPANY_DOMAIN"
  "tom.spoor@ombdigital.io|$CONTACT_EMAIL"
  "OMB Digital B.V.|$COMPANY_NAME"
  "OMB Digital|$COMPANY_NAME"
  "OMB Sales Cycle|${COMPANY_NAME} Sales Cycle"
  "by OMB|by $COMPANY_NAME"
  "By OMB|By $COMPANY_NAME"
  "Javelin-OMB/omb-sales-cycle-skills|$GITHUB_OWNER/$REPO_NAME"
  "Javelin-OMB|$GITHUB_OWNER"
  "omb-sales-cycle-skills|$REPO_NAME"
)

# Handle optional replacements
if [[ -n "$YOUR_NAME" ]]; then
  REPLACEMENTS+=("Tom Spoor|$YOUR_NAME")
else
  REPLACEMENTS+=("Tom Spoor|your team")
fi

if [[ -n "$TEAMMATE_NAME" ]]; then
  REPLACEMENTS+=("Caspar Fraiture|$TEAMMATE_NAME")
fi

if [[ -n "$JOOBI_REPLACEMENT" ]]; then
  REPLACEMENTS+=("Joobi.ai|$JOOBI_REPLACEMENT")
  REPLACEMENTS+=("Joobi Voice Recorder|$JOOBI_REPLACEMENT Recorder")
  REPLACEMENTS+=("Joobi Sales Engagement|$JOOBI_REPLACEMENT Sales Engagement")
  REPLACEMENTS+=("Joobi|$JOOBI_REPLACEMENT")
  REPLACEMENTS+=("joobi.io|$COMPANY_DOMAIN")
fi

for file in "${FILES[@]}"; do
  [[ -f "$file" ]] || continue
  for pair in "${REPLACEMENTS[@]}"; do
    find_str="${pair%%|*}"
    replace_str="${pair#*|}"
    apply_replace "$find_str" "$replace_str" "$file"
  done
done

# ─── Rename skills ───────────────────────────────────────────────

say "Renaming skill folders and updating cross-references..."

# Parallel arrays (bash 3.2 compatible — macOS default)
SKILL_OLD=(omb-sales-cycle omb-hook omb-funnel omb-contact omb-voiceloop)
SKILL_NEW=(
  "${SKILL_PREFIX}-sales-cycle"
  "${SKILL_PREFIX}-hook"
  "${SKILL_PREFIX}-funnel"
  "${SKILL_PREFIX}-contact"
  "${SKILL_PREFIX}-voiceloop"
)

# Rename skill folders
for i in "${!SKILL_OLD[@]}"; do
  old="${SKILL_OLD[$i]}"
  new="${SKILL_NEW[$i]}"
  if [[ -d "skills/$old" ]]; then
    if $DRY_RUN; then
      echo "  [DRY] rename: skills/$old → skills/$new"
    else
      mv "skills/$old" "skills/$new"
    fi
  fi
done

# Update skill-name references inside SKILL.md files + other files
TEXT_FILES=(install.sh README.md plugin.json)
for skill in skills/*/SKILL.md; do
  [[ -f "$skill" ]] && TEXT_FILES+=("$skill")
done

for i in "${!SKILL_OLD[@]}"; do
  old="${SKILL_OLD[$i]}"
  new="${SKILL_NEW[$i]}"
  for file in "${TEXT_FILES[@]}"; do
    [[ -f "$file" ]] || continue
    apply_replace "$old" "$new" "$file"
  done
done

# ─── Done ────────────────────────────────────────────────────────

cat <<EOF

[rebrand] ✓ Done.

What changed:
  - All OMB Digital references replaced with $COMPANY_NAME
  - 5 skills renamed with prefix "$SKILL_PREFIX-"
  - install.sh, README.md, plugin.json updated

Next steps:
  1. Review:       git diff
  2. Test install: ./install.sh
  3. Commit:       git add -A && git commit -m "Rebrand to $COMPANY_NAME"
  4. Push:         create a repo at github.com/$GITHUB_OWNER/$REPO_NAME
                   then: git remote set-url origin https://github.com/$GITHUB_OWNER/$REPO_NAME.git
                         git push -u origin main

Oops? Revert uncommitted changes: ./rebrand.sh --undo
EOF
