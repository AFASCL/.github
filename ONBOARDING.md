# Guía rápida para devs nuevos

Este equipo usa GitHub así:

Issue = trabajo
Project = estado
Milestone = entrega
Tag = versión desplegada en PROD

Deploy manual en dos ambientes: TST y PROD.

## 1) Antes de empezar
Tomá un Issue o creá uno (bug/feature/chore).
Debe tener:
- labels: tipo + área + prioridad
- assignee
- milestone
- estar en el Project

## 2) Estados (Project → Status)
Backlog → Ready → In progress → In review → Ready for TST → Deployed to TST → Ready for PROD → Deployed to PROD

No usamos labels como “in-progress/testing/done”.

## 3) Pull Request
El PR debe referenciar el issue:
Closes #123

## 4) Deploy manual
Cuando el PR está mergeado:
- Ready for TST → deploy TST → Deployed to TST
- Validar → Ready for PROD → deploy PROD → Deployed to PROD
Luego cerrar.

## 5) Milestone y tag
Un milestone agrupa lo que va a una versión (ej: v1.3.0).
Cuando todo está en PROD → crear tag/release v1.3.0.
