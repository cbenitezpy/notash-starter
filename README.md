# notash-starter

**Un vault daily-first con un agente de IA adentro, para no perder el contexto en el mundo real.**

Sistema de gestión personal para roles de liderazgo (aunque sirve para cualquiera):
un vault de Obsidian donde el motor es la cronología —no las carpetas— y un agente de IA
(Claude, Cursor, Copilot o Gemini) que vive adentro de los archivos: prepara tu día, atomiza tus
reuniones y audita tu semana. Sin piedad.

La idea completa está contada en la charla/artículo *"Cómo dejé de perder el contexto en el mundo real"*.

## La filosofía en 5 principios

1. **Daily-first.** Todo entra por la nota de hoy; la estructura viene después.
2. **Owner o no existe.** Un bloqueo sin responsable es ambigüedad, no bloqueo.
3. **Evidencia o no está cerrado.** Los ✅ falsos vuelven, y vuelven más caros.
4. **Medir > recordar.** La sensación de la semana miente; la tabla no.
5. **El sistema tiene que doler un poco.** Si solo te felicita, es un diario — no un radar.

## Qué hay en este repo

```
notash-starter/
├── vault/      → el starter: estructura vacía, plantillas, comandos y archivos
│                 de contexto listos para personalizar y empezar HOY
├── ejemplo/    → un vault completo con datos 100% ficticios (una semana entera:
│                 dailies, weekly auditora, radar, personas, transcripts crudos
│                 para procesar) — abrilo para ver cómo se ve el sistema vivo
└── docs/       → la metodología explicada y el setup de cada agente
```

## Quickstart

1. **Cloná o descargá** este repo.
2. **Abrí `vault/` como vault en Obsidian** (File → Open folder as vault).
3. Instalá los community plugins sugeridos (Obsidian te los va a ofrecer desde
   `.obsidian/community-plugins.json`): **dataview, templater, tasks, calendar**.
4. **Personalizá `vault/CLAUDE.md`** — es el corazón del sistema. Tu rol, tu gente,
   tu definición de valor. 10 minutos bien invertidos.
5. Conectá tu agente (ver `docs/setup-agentes.md`):
   - **Claude Code:** abrí una terminal en el vault y listo — lee `CLAUDE.md` solo.
   - **Cursor:** abrí la carpeta; las reglas (`.cursor/rules/`) y los comandos
     (`.cursor/commands/`) se cargan solos.
   - **Copilot:** lee `.github/copilot-instructions.md`.
   - **Gemini CLI:** los comandos están en `.gemini/commands/`.
   - Cualquier otro agente que siga el estándar `AGENTS.md` también funciona.
6. Corré tu primer `/hoy`. Mañana otro. El viernes, `/semana`. Ahí empieza la magia.

## Los 3 comandos

| Comando | Cuándo | Qué hace |
|---------|--------|----------|
| `/hoy` | Cada mañana, 3 min | Arrastra bloqueos desde la fuente (no de memoria), propone foco top 3, pregunta por tareas fuera de rol |
| `/meeting` | Después de cada reunión | Atomiza el transcript: acuerdos → personas, decisiones → proyectos, bloqueos → radar |
| `/semana` | Viernes | Audita los dailies: métricas vs semana anterior, ✅ falsos, loops desaparecidos, zombies, veredicto honesto |

## El vault de ejemplo

`ejemplo/` es un vault completo con una historia coherente y **datos totalmente inventados**
(personas, empresa y métricas ficticias): una semana de dailies con su weekly auditora,
un radar con zombies, personas con acuerdos vivos y 3 transcripts crudos sin procesar
para que pruebes `/meeting` vos mismo. Abrilo como segundo vault y explorá.

## Requisitos

- [Obsidian](https://obsidian.md) (gratis)
- Un agente que lea archivos: [Claude Code](https://claude.com/claude-code), [Cursor](https://cursor.com), GitHub Copilot, o Gemini CLI
- Plugins de Obsidian: dataview, templater-obsidian, obsidian-tasks-plugin, calendar

## Licencia

MIT — usalo, rompelo, mejoralo. Si te sirvió, contame qué cambiaste.
