---
tipo: dashboard
tags: [dashboard, vp]
up: "[[Home]]"
---

# Dashboard VP

> Vista operativa: lo que está trabado, lo que espera decisión, a quién no toqué.

## Bloqueos abiertos

Ver [[Bloqueos]] — 6 abiertos, 3 zombies 🧟, 1 con deadline vencido 🔴.

## Decisiones esperándome

- Objetivos H2: ¿posponer con [[Carla Mendez]] o recortar alcance? (quedan 4 días hábiles)
- Rotación fin de semana NOC: propuesta de [[Marcos Ruiz]] lista desde el 14/08.

## Personas en riesgo silencioso

```dataview
TABLE rol, proxima_fecha
FROM "05-People"
WHERE proxima_fecha = null OR proxima_fecha < date(today)
```
