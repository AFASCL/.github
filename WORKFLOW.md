# Workflow de Desarrollo – GitHub

Este documento define el **esquema estándar de trabajo** del equipo para todos los repositorios.
Aplica a proyectos con **deploy manual** y **ambientes TST y PROD**.

## 1) Conceptos básicos

### Issues
Un **Issue** representa una unidad de trabajo (bug/feature/tarea técnica/doc).

👉 Todo trabajo visible debe ser un Issue.

### Labels
Los **labels describen QUÉ es el trabajo**, no en qué estado está.

### Project
El **Project** representa el flujo (estado). El estado se maneja con **Status**.

### Milestone
El **Milestone** representa una entrega/versión. Termina en un TAG cuando está en PROD.

---

## 2) Reglas de labels (resumen)
Cada Issue debe tener:
- 1 tipo: `bug` / `feature` / `chore`
- 1 área: `backend` / `frontend` / `infra` / `legacy`
- 1 prioridad: `p0` / `p1` / `p2`

Labels especiales (según aplique): `blocked`, `needs-review`, `needs-info`.

---

## 3) Estados del Project (deploy manual con TST y PROD)

Status (Single select), en orden:

Backlog
Ready
In progress
In review
Ready for TST
Deployed to TST
Ready for PROD
Deployed to PROD

---

## 4) Significado de cada estado

- Backlog: pendiente
- Ready: definido y sin bloqueos
- In progress: en desarrollo
- In review: PR abierto / revisión
- Ready for TST: mergeado, listo para deploy a TST
- Deployed to TST: deploy hecho en TST
- Ready for PROD: validado en TST, listo para deploy a PROD
- Deployed to PROD: deploy hecho en PROD (se puede cerrar)

---

## 5) Flujo esperado

Issue creado → Backlog
Priorizar → Ready
Desarrollar → In progress
PR → In review
Merge → Ready for TST
Deploy TST → Deployed to TST
Validar → Ready for PROD
Deploy PROD → Deployed to PROD
Cerrar issue

---

## 6) Checklist deploy manual (recomendada)

- PR aprobado y mergeado
- Deploy ejecutado en TST
- Validación funcional en TST
- Deploy ejecutado en PROD
- Validación post-deploy en PROD

---

## 7) Principio rector

Labels describen qué es el trabajo.
Status describe en qué etapa está.
Milestone agrupa la entrega.
Tag identifica la versión en PROD.
