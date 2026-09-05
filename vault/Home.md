---
tipo: dashboard
tags: [home, dashboard]
---

# Home

> [!tip] Inicio del vault. Todo nace o se navega desde acá.

## MOCs

- [[Dashboard]] — vista operativa diaria (bloqueos, decisiones, personas)
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
