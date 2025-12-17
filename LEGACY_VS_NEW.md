# Gestión de repositorios: Legacy vs Nuevos

Este documento define cómo aplicar el workflow (Issues + Project + Milestones + Tags)
en repositorios **legacy** y en repositorios **nuevos**.

## 1) Repos NUEVOS
- cambios frecuentes
- PRs como estándar
- releases frecuentes
Objetivo: iterar rápido y ordenado.

## 2) Repos LEGACY
- JSF/TomEE/Java 1.8/sockets/SOAP/scripts antiguos
- cambios delicados y riesgo operativo
Objetivo: minimizar riesgo y validar bien TST/PROD.

## 3) Labels
- En NUEVOS: usar `legacy` solo si toca integración con heredados
- En LEGACY: usar `legacy` siempre que el cambio afecte runtime heredado o riesgo operativo

## 4) Project (tablero)
Recomendado para equipo chico: **un Project único**, con vistas:
- Vista Legacy: filtro label `legacy`
- Vista Nuevos: filtro NOT `legacy`

## 5) Milestones y tags
Regla: **no cerrar milestone ni taggear hasta Deployed to PROD**.
Hotfix LEGACY:
- milestone “Hotfix vX.Y.Z”
- pocos issues (1–3), PR pequeño, revisión sí o sí
- TST/PROD manual
- tag vX.Y.Z al final
