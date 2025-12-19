# Guía rápida para desarrolladores

Ambientes:
- TST
- PROD

Deploy: manual

---

## 1. Antes de escribir código
Todo trabajo empieza con un Issue.

---

## 2. Ramas
- dev → integración / TST
- main → producción

Para trabajar un Issue:
1. Crear rama desde dev
2. feature/ID-descripcion | bugfix/ID-descripcion | chore/ID-descripcion
3. Commits en la rama

---

## 3. Integración

Antes de integrar:
git fetch origin
git rebase origin/dev

Luego:
- PR liviano a dev con Closes #ID
- o integración por el responsable

Después:
- borrar la rama del ticket

---

## 4. TST
Deploy manual desde dev y validar.

---

## 5. PROD
PR dev → main, deploy manual, cerrar issues y crear tag.

---

Regla clave:
Nunca se mergea directo a main.
