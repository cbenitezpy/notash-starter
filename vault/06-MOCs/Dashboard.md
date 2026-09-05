---
tipo: dashboard
tags: [dashboard]
up: "[[Home]]"
---

# Dashboard

> Vista operativa: lo que está trabado, lo que espera decisión, a quién no toqué.

## Bloqueos abiertos

Ver [[Bloqueos]].

## Decisiones esperándome

- <decisión pendiente con la info ya disponible>

## Personas en riesgo silencioso

```dataview
TABLE rol, proxima_fecha
FROM "05-People"
WHERE proxima_fecha = null OR proxima_fecha < date(today)
```
