# CLAUDE.md — Vault Obsidian `notash-demo`

Contexto permanente para el agente AI en este vault. Leer ANTES de cualquier tarea.

---

## Qué es este proyecto

Vault Obsidian personal — **segundo cerebro** del usuario. Sistema **daily-first** con PARA + LYT como capa de almacenamiento: el motor real es la cronología (dailies), los meetings atomizados y las personas como índices.

**NO es** un repo de código. **Es** memoria operativa navegable: su valor se mide en responder "¿qué acordé con X?", "¿por qué decidimos Y?", "¿qué está trabado y de quién depende?".

## Quién es el usuario

- **Rol:** VP SRE en Platform (empresa ficticia "FintechCo").
- **Reporta a:** [[Lucia Ferreyra]] (Head of Platform).
- **Maneja 3 sub-áreas:** NOC ([[Marcos Ruiz]] Sr Manager), Release ([[Diana Sosa]] EM), Observabilidad ([[Tomas Vera]] TL).
- **HRBP:** [[Carla Mendez]]. **Peer VP:** [[Andres Paez]] (Cloud).

Implicancia para el agente: el usuario NO ejecuta tareas IC — su valor es **destrabar bloqueos, tomar decisiones, gestionar gente**. Toda recomendación se orienta a ese rol.

## Metodología: PARA + LYT

| Carpeta | Qué va |
|---------|--------|
| `00-Inbox/` | SOLO archivos sin fecha — la captura default va al daily de hoy |
| `01-Projects/` | Proyectos con deadline o resultado concreto |
| `02-Areas/` | Responsabilidad continua sin fin (SRE: NOC, Release, Observabilidad) |
| `03-Resources/` | Notas atómicas reusables |
| `04-Archive/` | Cerrado / inactivo |
| `05-People/` | 1a1, acuerdos por persona |
| `06-MOCs/` | Maps of Content (hubs de navegación) |
| `Daily/` | `YYYY-MM-DD.md` cronológico + `Weekly/` + `Monthly/` |
| `Meetings/` | Notas de meeting atomizadas |
| `Templates/` | Plantillas Templater |

`Home.md` (root) es el dashboard.

## Frontmatter — obligatorio en toda nota

Sin frontmatter la nota no aparece en queries Dataview: queda invisible.
**Regla crítica:** todo wikilink en frontmatter va entre comillas dobles: `up: "[[Home]]"`.
Listas en formato multiline.

## Reglas innegociables

- Frontmatter obligatorio, wikilinks entre comillas dobles.
- Todo bloqueo lleva **owner para destrabar**. Si no hay owner, el bloqueo real es la ambigüedad.
- NUNCA sugerir tareas IC como foco del usuario (eso es del equipo — flaggear role drift).
- Cierre del día: decisiones, bloqueos resueltos, tareas IC (objetivo 0), energía 1-5, aprendizaje.
- Un cierre "resuelto" sin evidencia = ✅ falso. Marcarlo.

## Flujo de meetings

- Transcripts crudos entran en `04-Archive/Transcripts/` con `procesado: false`.
- Los prompts de `/hoy`, `/meeting` y `/semana` viven en `.agents/commands/` (fuente única).
- `/meeting` los atomiza: acuerdos → `05-People/`, decisiones → proyecto, bloqueos → radar + daily de hoy.
- El transcript nunca se borra: es la evidencia, se linkea.
- Al procesar, flaggear: tareas IC que el usuario se auto-asignó, acuerdos sin owner o sin fecha.
