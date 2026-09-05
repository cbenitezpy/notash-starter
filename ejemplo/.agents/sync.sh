#!/usr/bin/env bash
# Genera las copias para agentes que NO soportan includes (Cursor commands, Copilot)
# desde la fuente única: CLAUDE.md + .agents/commands/*.md
#
# Uso: .agents/sync.sh          → regenera las copias
#      .agents/sync.sh --check  → exit 1 si alguna copia está desactualizada (CI / pre-commit)
set -euo pipefail
cd "$(dirname "$0")/.."
CHECK=0; [ "${1:-}" = "--check" ] && CHECK=1
STALE=0
render() { printf '<!-- GENERADO por .agents/sync.sh — NO EDITAR. Fuente: %s -->\n\n' "$1"; cat "$1"; }
gen() { # $1=fuente $2=destino
  if [ "$CHECK" = 1 ]; then
    if [ ! -f "$2" ] || ! diff -q <(render "$1") "$2" >/dev/null; then
      echo "DESACTUALIZADO: $2  (fuente: $1)"; STALE=1
    fi
  else
    render "$1" > "$2"; echo "ok  $2  ←  $1"
  fi
}
mkdir -p .cursor/commands .github
for f in .agents/commands/*.md; do gen "$f" ".cursor/commands/$(basename "$f")"; done
gen CLAUDE.md .github/copilot-instructions.md
if [ "$STALE" = 1 ]; then echo "Corré .agents/sync.sh para regenerar."; exit 1; fi
[ "$CHECK" = 1 ] && echo "Todo sincronizado."
exit 0
