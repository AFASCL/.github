# Onboarding – Guía rápida

Esta guía explica **cómo trabajar un ticket día a día**.

---

## 1. Antes de empezar

- Todo trabajo comienza con un **Issue**
- No se escribe código sin Issue

---

## 2. Ramas

- `dev` → integración / TST
- `main` → producción

Para trabajar:
1. Crear rama desde `dev`
2. Nombrarla `txxx` (t de ticket y xxx del ID del issue)
3. Commits pequeños durante el trabajo

---

## 3. Commits

Durante el desarrollo:
feat(123): agregar validaciones (WIP)

Al integrar:
feat(123): agregar validaciones

- El commit final no debe tener `(WIP)`
- El ticket queda como **1 commit**

---

## 4. Integración

1. Rebase contra `dev`
2. Integración a `dev` (PR liviano o merge)
3. Borrado de la rama

---

## 5. QA y TST

- El deploy a TST se hace desde `dev`
- QA valida cuando el Issue está en **Deployed to TST**
- Si QA falla, el Issue vuelve a **In progress**

---

## 6. PROD

- PR de `dev` → `main`
- Deploy manual a PROD
- Cierre del Issue y Milestone

---

## Regla final

Nunca se mergea directo a `main`.
