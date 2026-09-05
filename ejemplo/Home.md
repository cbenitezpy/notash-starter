---
tipo: dashboard
tags: [home, dashboard]
---

# Home

> [!tip] Inicio del segundo cerebro. Todo nace o se navega desde acá.

## MOCs

- [[Dashboard VP]] — vista operativa diaria (bloqueos, decisiones, personas, riesgo)
- [[Personas MOC]]
- [[Proyectos Activos MOC]]

## Hoy

### 1a1 vencidas / sin agendar

```dataview
TABLE rol, proxima_fecha
FROM "05-People"
WHERE proxima_fecha = null OR proxima_fecha < date(today)
SORT proxima_fecha ASC
```

### Proyectos en riesgo

```dataview
TABLE deadline, area
FROM "01-Projects"
WHERE estado = "activo" AND (deadline = null OR deadline < date(today) + dur(7 days))
SORT deadline ASC
```

## Esta semana

- Weekly actual: [[2026-W34]]
- Dailies: [[2026-08-17]] · [[2026-08-18]] · [[2026-08-19]] · [[2026-08-20]] · [[2026-08-21]]
