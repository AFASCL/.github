#!/usr/bin/env bash
set -euo pipefail

ORG="AFASCL"

if [[ $# -gt 0 ]]; then
  repos=("$@")
else
  repos=(WSLpg)
fi

STANDARD_LABELS=(
  "bug|D73A4A|Bug / error de funcionamiento"
  "feature|A2EEEF|Nueva funcionalidad"
  "chore|C5DEF5|Tarea técnica / mantenimiento"
  "backend|0E8A16|Backend"
  "frontend|1D76DB|Frontend"
  "infra|5319E7|Infraestructura / DevOps"
  "legacy|FBCA04|Código legado"
  "p0|B60205|Prioridad crítica"
  "p1|D93F0B|Prioridad alta"
  "p2|0E8A16|Prioridad normal"
  "blocked|000000|Bloqueado / dependiente de terceros"
  "needs-info|E99695|Falta información"
)

DEFAULT_LABELS_TO_DELETE=(
  "documentation"
  "duplicate"
  "enhancement"
  "good first issue"
  "help wanted"
  "invalid"
  "question"
  "wontfix"
)

for repo in "${repos[@]}"; do
  echo "=== Repo: $ORG/$repo ==="

  for entry in "${STANDARD_LABELS[@]}"; do
    IFS="|" read -r name color desc <<< "$entry"
    gh label create "$name"       --repo "$ORG/$repo"       --color "$color"       --description "$desc"       --force >/dev/null
  done

  for name in "${DEFAULT_LABELS_TO_DELETE[@]}"; do
    if gh label list --repo "$ORG/$repo" --search "$name" --limit 200 | awk -F'\t' '{print $1}' | grep -Fxq "$name"; then
      gh label delete "$name" --repo "$ORG/$repo" --yes >/dev/null
    fi
  done

  echo "OK $ORG/$repo"
done
