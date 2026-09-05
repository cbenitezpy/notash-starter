# Setup de agentes

El contexto vive en el vault, no en el chat. Por eso el agente es intercambiable:
podés usar Claude en casa, Copilot en la oficina y Cursor en el medio, sobre el mismo vault.

## Claude Code

1. Instalá [Claude Code](https://claude.com/claude-code).
2. Abrí una terminal en la raíz del vault y corré `claude`.
3. Lee `CLAUDE.md` automáticamente. Listo.
4. Los "comandos" (`/hoy`, `/meeting`, `/semana`) podés invocarlos pegando el
   contenido de `.gemini/commands/*.toml` como prompt, o mejor: crearlos como
   skills/comandos propios de Claude Code (`.claude/commands/hoy.md`, etc.)
   copiando el campo `prompt` de cada `.toml`.

## GitHub Copilot

1. Copilot lee `.github/copilot-instructions.md` automáticamente en VS Code.
2. Ese archivo apunta a `CLAUDE.md` como fuente completa del contexto.
3. Para los comandos, pegá el prompt del `.toml` correspondiente en el chat,
   o creá prompts guardados en tu workspace.

## Gemini CLI

1. Los comandos ya están listos en `.gemini/commands/`: `hoy.toml`,
   `meeting.toml`, `semana.toml`.
2. Corré `gemini` en la raíz del vault y usá `/hoy`, `/meeting`, `/semana`.
3. Si usás `GEMINI.md` como archivo de contexto, creálo apuntando a `CLAUDE.md`
   (o duplicá el contenido — pero entonces mantené los dos).

## Cursor

1. Abrí el vault como carpeta en Cursor.
2. Cursor carga `.cursor/rules/vault.mdc` automáticamente (`alwaysApply: true`):
   apunta a `CLAUDE.md` como fuente de verdad y fija las reglas de interacción
   (una pregunta por vez, no inventar owners ni fechas, no crear stubs).
3. Los comandos ya están como *custom commands* en `.cursor/commands/`:
   escribí `/hoy`, `/meeting` o `/semana` en el chat del agente y listo.
4. `AGENTS.md` en la raíz también lo lee Cursor (y cualquier agente que siga ese
   estándar) — es un resumen que redirige a `CLAUDE.md`.

## Personalización (importante)

Los comandos vienen calibrados para un rol de gestión tipo VP/EM
(foco = destrabar, decidir, gestionar gente; "role drift" = hacer tareas técnicas).
Si tu rol es otro, editá dos cosas:

1. `CLAUDE.md` → sección "Quién es el usuario" y la definición de valor.
2. Los prompts de los comandos → el ranking del foco y qué cuenta como drift.
   Están duplicados en `.gemini/commands/*.toml` y `.cursor/commands/*.md`: editá ambos
   (o generá uno desde el otro) para que todos los agentes hagan lo mismo.

El sistema funciona en la medida en que la definición de valor sea honesta.
Si le mentís al CLAUDE.md, el agente te va a felicitar por perderte.
