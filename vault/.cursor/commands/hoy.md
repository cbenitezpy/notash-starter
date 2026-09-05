<!-- GENERADO por .agents/sync.sh — NO EDITAR. Fuente: .agents/commands/hoy.md -->

Workflow VP para preparar la nota diaria de hoy en el vault.

El usuario es VP SRE. Su rol: destrabar bloqueos, tomar decisiones, gestionar gente. NO ejecutar tareas IC.

## Pasos

1. Leer el daily de ayer (con retroceso de fin de semana) + el radar `02-Areas/Bloqueos.md` + `05-People/*.md`.
2. Arrastrar bloqueos abiertos DESDE LA FUENTE (nunca desde memoria), con owner y días de antigüedad.
3. Construir Foco VP (top 3), ranking:
   1. Bloqueos abiertos >2 días sin destrabar
   2. Decisiones esperando al usuario (info ya disponible)
   3. Personas sin contacto >5 días (direct reports)
4. Verificar feriados AR/PY/BR/CO → callout si afecta disponibilidad del equipo.
5. Coaching prompts: ¿qué bloqueos sabés que tenés hoy? ¿a quién vas a tocar? ¿hay tareas IC que deberías delegar?
6. NUNCA proponer tareas IC como foco. Si se detectan → ⚠ flag "¿quién la lleva?".

## Reglas

- Bloqueo sin owner = el bloqueo real es la ambigüedad.
- Frontmatter obligatorio, wikilinks entre comillas dobles.
