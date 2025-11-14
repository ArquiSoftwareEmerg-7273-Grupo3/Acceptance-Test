# Acceptance-Test

# Presentación del Trabajo Realizado

En este proyecto se elaboró un conjunto completo de **Acceptance Tests** utilizando el lenguaje Gherkin, con el objetivo de validar las funcionalidades principales de la plataforma *ArtCollab*.  
El enfoque estuvo orientado a asegurar que cada módulo cumpla con los requisitos esperados por los distintos tipos de usuarios: ilustradores, escritores y administradores.

## ¿Qué se realizó?

### ✔ Definición de Features
Se redactaron *features* que representan las funcionalidades clave del sistema, tales como:
- Registro con selección de rol  
- Inicio de sesión  
- Publicación de posts  
- Comentarios  
- Reporte de contenido  
- Gestión de ofertas laborales  
- Portafolio del ilustrador  
- Sistema de seguidores  
- Notificaciones de actividad  
- Recomendaciones inteligentes  

Cada funcionalidad fue descrita desde la perspectiva de valor del usuario.

### ✔ Creación de Escenarios (Scenarios)
Para cada feature se definieron escenarios concretos que describen:
- Estado inicial (Given)  
- Acciones del usuario (When)  
- Resultado esperado (Then)

Se cubrieron tanto flujos exitosos como errores o condiciones alternativas.

### ✔ Inclusión de Examples
A los escenarios que lo requerían se les añadieron tablas **Examples**, permitiendo probar la misma funcionalidad con distintos datos de entrada.  
Estas tablas facilitan pruebas más amplias y automatizadas.

### ✔ Consistencia y claridad en los criterios de aceptación
Se garantizó que cada test:
- Sea entendible para cualquier rol (PO, QA o desarrollador)  
- Sirva como guía para desarrollo  
- Permita verificar objetivamente si una funcionalidad está completa

## Resultado Final
El proyecto ahora cuenta con un conjunto estructurado de **Acceptance Tests** que documentan el comportamiento esperado del sistema.  
Estos tests sirven como base para validación manual o automatizada y garantizan que ArtCollab evolucione con calidad y alineación a los requisitos del usuario.
