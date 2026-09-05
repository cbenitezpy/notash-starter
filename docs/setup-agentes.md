# Setup de agentes

El contexto vive en el vault, no en el chat. Por eso el agente es intercambiable:
podés usar Claude en casa, Copilot en la oficina y Cursor en el medio, sobre el mismo vault.

## Una sola fuente de verdad

Hay exactamente dos lugares que se editan a mano:

- **`CLAUDE.md`** — el contexto: quién sos, qué es valor en tu rol, estructura, reglas.
- **`.agents/commands/{hoy,meeting,semana}.md`** — los prompts de los tres comandos.

Todo lo demás o *referencia* esos archivos con el mecanismo de include de cada agente,
o es una *copia generada* por `.agents/sync.sh`:

```mermaid
flowchart LR
    C["CLAUDE.md<br/>(contexto base)"] --> G["GEMINI.md<br/>@CLAUDE.md"]
    C --> M["cursor/rules/vault.mdc<br/>@CLAUDE.md"]
    C --> A["AGENTS.md<br/>(apunta en texto)"]
    C -. sync.sh .-> CP["github/copilot-instructions.md<br/>(copia generada)"]
    P[".agents/commands/*.md<br/>(prompts base)"] --> CC[".claude/commands/*.md<br/>@.agents/commands/x.md"]
    P --> GC[".gemini/commands/*.toml<br/>@{.agents/commands/x.md}"]
    P -. sync.sh .-> CUC[".cursor/commands/*.md<br/>(copia generada)"]
```

Después de editar la fuente, corré:

```bash
.agents/sync.sh          # regenera las copias (Cursor commands, Copilot)
.agents/sync.sh --check  # exit 1 si alguna copia quedó vieja — ideal como pre-commit hook
```

Pre-commit hook opcional (`.git/hooks/pre-commit`):

```bash
#!/usr/bin/env bash
exec .agents/sync.sh --check
```

## Claude Code

1. Instalá [Claude Code](https://claude.com/claude-code).
2. Abrí una terminal en la raíz del vault y corré `claude`. Lee `CLAUDE.md` solo.
3. Los comandos `/hoy`, `/meeting`, `/semana` ya existen en `.claude/commands/` —
   cada uno es una línea `@.agents/commands/<cmd>.md` que incluye el prompt base.

## Cursor

1. Abrí el vault como carpeta en Cursor.
2. `.cursor/rules/vault.mdc` se carga solo (`alwaysApply: true`): incluye `CLAUDE.md`
   vía `@CLAUDE.md` y fija las reglas de interacción (una pregunta por vez, no inventar
   owners ni fechas, no crear stubs).
3. Los comandos están en `.cursor/commands/` como *custom commands* — escribí `/hoy`
   en el chat. Son copias generadas: **editá `.agents/commands/` y corré `sync.sh`**.
4. `AGENTS.md` también lo lee Cursor.

## Gemini CLI

1. `GEMINI.md` importa `CLAUDE.md` con `@CLAUDE.md`.
2. Los comandos en `.gemini/commands/*.toml` inyectan el prompt base con `@{.agents/commands/<cmd>.md}`.
3. Corré `gemini` en la raíz del vault y usá `/hoy`, `/meeting`, `/semana`.

## GitHub Copilot

1. Copilot lee `.github/copilot-instructions.md` automáticamente en VS Code.
2. Es una **copia generada** de `CLAUDE.md` (Copilot no soporta includes). No la edites:
   editá `CLAUDE.md` y corré `.agents/sync.sh`.
3. Para los comandos, pegá el contenido de `.agents/commands/<cmd>.md` en el chat,
   o guardalos como prompts del workspace.

## Personalización (importante)

Los comandos vienen calibrados para un rol de gestión tipo VP/EM
(foco = destrabar, decidir, gestionar gente; "role drift" = hacer tareas técnicas).
Si tu rol es otro, editá dos cosas — y solo dos:

1. `CLAUDE.md` → sección "Quién es el usuario" y la definición de valor.
2. `.agents/commands/*.md` → el ranking del foco y qué cuenta como drift.

Después `.agents/sync.sh`, y todos los agentes quedan iguales.

El sistema funciona en la medida en que la definición de valor sea honesta.
Si le mentís al CLAUDE.md, el agente te va a felicitar por perderte.
