# AGENTS.md

Archivo de contexto para agentes que siguen el estándar AGENTS.md (Cursor, Codex, y otros).

**La fuente de verdad es `CLAUDE.md` en la raíz de este vault.** Leerlo completo antes de cualquier tarea.

## Cómo está organizado el contexto (una sola fuente, varios agentes)

- `CLAUDE.md` — el contexto base. Se edita a mano. Todos los demás lo referencian.
- `.agents/commands/*.md` — los prompts de `/hoy`, `/meeting`, `/semana`. Se editan a mano, una sola vez.
- `GEMINI.md`, `.claude/commands/`, `.gemini/commands/`, `.cursor/rules/` — **referencian** la fuente (no la copian).
- `.cursor/commands/`, `.github/copilot-instructions.md` — **copias generadas** por `.agents/sync.sh`. No editar.

Resumen mínimo del sistema:
- Vault Obsidian daily-first: todo entra por `Daily/YYYY-MM-DD.md`.
- Todo bloqueo tiene owner y fecha. Sin owner, el bloqueo es la ambigüedad.
- Cierre sin evidencia = ✅ falso.
- Frontmatter obligatorio; wikilinks en YAML entre comillas dobles.
