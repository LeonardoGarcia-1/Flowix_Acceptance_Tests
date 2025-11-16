Feature: Ver quiénes son los que elaboraron la landing
Como usuario curioso quiero ver una sección sobre el equipo desarrollador
para conocer quiénes participaron y generar mayor confianza.

Scenario Outline: Visualización de la sección "Quiénes Somos"
Given que el usuario ingresa a la landing page
When navega hacia la sección "Quiénes Somos"
Then el sistema muestra miembros como "<nombre>" con el rol "<rol>"

Examples:
| nombre | rol              |
| Carlos | Desarrollador web|
| Ana    | Diseñadora UX    |

Scenario Outline: Acceso a información extendida del equipo
Given que el usuario está en la sección "Quiénes Somos"
When selecciona al miembro "<nombre>" o hace clic en "Ver más"
Then el sistema muestra una breve descripción de su aporte "<aporte>"

Examples:
| nombre | aporte                          |
| Carlos | Implementación de la landing    |
| Ana    | Diseño de la experiencia de usuario |
