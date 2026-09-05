# CLAUDE.md — Contexto permanente del vault

> ⚙️ PERSONALIZÁ ESTE ARCHIVO. Es el corazón del sistema: el agente lo lee antes de cualquier tarea.
> Reemplazá los <placeholders> con tu realidad. Cuanto más honesto, mejor funciona.

## Qué es este proyecto

Vault Obsidian personal — memoria operativa navegable, sistema **daily-first**.
Su valor se mide en responder: ¿qué acordé con X?, ¿por qué decidimos Y?, ¿qué está trabado y de quién depende?

**NO es** un repo de código ni un archivo de referencia. Es un radar.

## Quién es el usuario

- **Rol:** <tu rol — ej: VP de SRE, EM, Tech Lead, PM>
- **Reporta a:** [[<Tu Jefe/a>]]
- **Equipos / áreas a cargo:** <listá tus equipos con sus responsables como wikilinks>

Implicancia para el agente: definí acá qué es VALOR en tu rol. Ejemplo para un rol de gestión:
el usuario NO ejecuta tareas de individual contributor — su valor es destrabar bloqueos,
tomar decisiones y gestionar gente. Toda recomendación se orienta a eso.
Si el rol es técnico, ajustá: quizás tu "role drift" es lo contrario (mucha reunión, poco deep work).

## Metodología: daily-first + PARA

| Carpeta | Qué va |
|---------|--------|
| `00-Inbox/` | SOLO archivos sin fecha — la captura default va al daily de hoy |
| `01-Projects/` | Proyectos con deadline o resultado concreto |
| `02-Areas/` | Responsabilidades continuas sin fin |
| `03-Resources/` | Notas atómicas reusables, lecciones aprendidas |
| `04-Archive/` | Cerrado / inactivo. `Transcripts/` = transcripts crudos de meetings |
| `05-People/` | Una nota por persona, con sus acuerdos vivos |
| `06-MOCs/` | Hubs de navegación |
| `Daily/` | `YYYY-MM-DD.md` cronológico + `Weekly/` + `Monthly/` |
| `Meetings/` | Notas de meeting atomizadas |
| `Templates/` | Plantillas Templater |

`Home.md` es el dashboard.

## Flujo de meetings

- Transcripts crudos entran en `04-Archive/Transcripts/` con `procesado: false`.
- `/meeting` los atomiza: acuerdos → `05-People/`, decisiones → proyecto, bloqueos → radar + daily de hoy.
- El transcript nunca se borra: es la evidencia, se linkea.

## Frontmatter — obligatorio en toda nota

Sin frontmatter la nota no aparece en queries Dataview: queda invisible.
**Regla crítica:** todo wikilink en frontmatter va entre comillas dobles: `up: "[[Home]]"`. Listas en multiline.

## Reglas innegociables

- Todo bloqueo lleva **owner para destrabar** y fecha de origen. Sin owner, el bloqueo real es la ambigüedad.
- Bloqueo >14 días sin update sustantivo = 🧟 zombie. Se mata o se resucita, no se acumula.
- Cierre "resuelto" sin evidencia = ✅ falso. Marcarlo y reclasificar como abierto.
- Cierre del día todos los días: decisiones, bloqueos resueltos, tareas fuera de rol, energía 1-5, aprendizaje.
- NUNCA sugerir como foco tareas que van contra la definición de valor del rol (ver arriba).
