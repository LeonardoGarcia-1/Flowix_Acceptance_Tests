Feature: Visualización del apartado de novedades en la landing
Como usuario nuevo o recurrente quiero ver un apartado de novedades
para enterarme de nuevas funciones y actualizaciones del sistema.

Scenario Outline: Visualización de novedades más recientes
Given que el usuario navega por la landing page
When llega a la sección "Novedades"
Then el sistema muestra actualizaciones como "<titulo>" con fecha "<fecha>"

Examples:
| titulo                      | fecha      |
| Nueva función de viáticos   | 2025-11-01 |
| Mejora en itinerario diario | 2025-11-05 |

Scenario Outline: Acceso a detalles ampliados de cada novedad
Given que el usuario se encuentra en la sección "Novedades"
When selecciona la novedad "<titulo>"
Then el sistema muestra un modal con información ampliada

Examples:
| titulo                      |
| Nueva función de viáticos   |
| Mejora en itinerario diario |
