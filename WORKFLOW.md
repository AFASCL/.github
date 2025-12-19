# Workflow de Desarrollo

Este documento define el **workflow oficial del equipo**.
Aplica a todos los repositorios.

Ambientes:
- **TST**
- **PROD**

Deploy: **manual**

---

## 1. Principios

- Todo trabajo comienza con un **Issue**
- Todo cambio que llega a producción es **trazable**
- Se prioriza simplicidad y claridad sobre burocracia

---

## 2. Issues

Un **Issue representa una unidad de trabajo**:
- bug
- feature
- chore (tarea técnica)

Regla:
> **Si no hay Issue, el trabajo no existe.**

Los Issues se crean usando **Issue Forms (.yml)**.

Cada Issue debe:
- tener tipo, prioridad y área
- estar asignado a un Milestone
- estar agregado al Project

---

## 3. Modelo de ramas

```text
main  → PROD
dev   → TST (integración)
