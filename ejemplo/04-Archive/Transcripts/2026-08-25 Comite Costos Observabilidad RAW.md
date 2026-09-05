---
tipo: transcript
fecha: 2026-08-25
tags: [transcript, raw, tomas, andres]
procesado: false
---

# Transcript crudo — Comité Costos Observabilidad — 2026-08-25

> ⚠️ Sin procesar. Correr `/meeting` para atomizar.

[14:32] Tomas: el número grueso del business case está: hoy gastamos 48k/mes, con hard-limit por equipo y baja de dashboards huérfanos proyectamos 31k/mes, ahorro anual ~200k
[14:33] Yo: perfecto, eso es lo que necesitaba para el jueves. ¿Riesgos del hard-limit?
[14:35] Tomas: el riesgo es que un equipo se quede sin telemetría en un incidente. Propongo excepción automática cuando hay incidente activo declarado
[14:36] Yo: aprobado, incluí eso en la propuesta
[14:38] Andres: ojo que la migración de ambientes de octubre puede duplicar consumo temporalmente mientras convivan ambos
[14:39] Yo: ¿cuánto tiempo convivirían?
[14:40] Andres: tres semanas máximo
[14:41] Yo: ok, entonces el hard-limit arranca después de tu migración, no antes. ¿Me confirmás fecha de fin de migración esta semana?
[14:42] Andres: te la paso el miércoles
[14:44] Tomas: los dashboards huérfanos, identificamos 340, de los cuales 210 sin acceso en 90 días. Los doy de baja en tandas de 50 por semana
[14:45] Yo: dale, arrancá con los de 90 días. Comunicalo antes en el canal general por si alguno es de auditoría
[14:47] Tomas: una cosa más, necesito una persona más para el equipo si vamos a sostener el on-call de observabilidad, estamos rotando entre 3
[14:48] Yo: eso lo llevo yo a la conversación de objetivos H2 con Lucia, no te prometo nada pero queda registrado
