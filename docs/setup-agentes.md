# Setup de agentes

El contexto vive en el vault, no en el chat. Por eso el agente es intercambiable:
podés usar Claude en casa y Copilot en la oficina sobre el mismo vault.

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

## Personalización (importante)

Los comandos vienen calibrados para un rol de gestión tipo VP/EM
(foco = destrabar, decidir, gestionar gente; "role drift" = hacer tareas técnicas).
Si tu rol es otro, editá dos cosas:

1. `CLAUDE.md` → sección "Quién es el usuario" y la definición de valor.
2. Los `prompt` de los `.toml` → el ranking del foco y qué cuenta como drift.

El sistema funciona en la medida en que la definición de valor sea honesta.
Si le mentís al CLAUDE.md, el agente te va a felicitar por perderte.
