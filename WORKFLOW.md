# Workflow de Desarrollo

Este documento define el **workflow oficial del equipo**.
Aplica a todos los repositorios.

Ambientes:
- TST
- PROD

Deploy: manual

---

## 1. Principios

- Todo trabajo comienza con un Issue
- Todo cambio que llega a producción es trazable
- Se prioriza simplicidad y claridad sobre burocracia

---

## 2. Issues

Un Issue representa una unidad de trabajo:
- bug
- feature
- chore (tarea técnica)

Regla:
Si no hay Issue, el trabajo no existe.

Los Issues se crean usando Issue Forms (.yml).

Cada Issue debe:
- tener tipo, prioridad y área
- estar asignado a un Milestone
- estar agregado al Project

---

## 3. Modelo de ramas

main  → PROD  
dev   → TST (integración)

Las ramas de trabajo salen siempre desde dev.

Convención de nombres:
- feature/ID-descripcion
- bugfix/ID-descripcion
- chore/ID-descripcion

Responsabilidades:
- main y dev son gestionadas por el responsable de integración
- Los desarrolladores trabajan por ticket en ramas propias

---

## 4. Integración de tickets (rebase + merge a dev)

1. git fetch origin
2. git rebase origin/dev
3. Resolver conflictos si los hay
4. Integrar a dev (PR liviano o merge por el responsable)
5. Eliminar la rama del ticket

Notas:
- El rebase reescribe historial
- Si la rama fue pusheada, usar --force-with-lease
- Nunca se rebasa main

---

## 5. Pull Requests

El PR no es burocracia, es trazabilidad.

Todo PR debe incluir:
Closes #ID

GitHub envía notificaciones automáticas por mail.

---

## 6. Flujo TST

1. Integración a dev
2. Deploy manual a TST
3. Validación funcional
4. Issue pasa a Deployed to TST

---

## 7. Flujo PROD

1. PR de dev a main
2. Deploy manual a PROD
3. Cierre de Issues y Milestone
4. Creación de Tag

---

## 8. Estados del Project

Backlog  
Ready  
In progress  
In review  
Ready for TST  
Deployed to TST  
Ready for PROD  
Deployed to PROD  

---

## 9. Regla para recordar (puede ayudar)

Issue     = trabajo  
Project   = estado  
Milestone = entrega  
Tag       = versión en PROD
