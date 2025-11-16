Feature: Comparación de funciones entre plan gratuito y premium
Como cliente potencial quiero ver una tabla comparativa entre el plan gratuito y el premium
para entender qué beneficios ofrece cada uno.

Scenario Outline: Visualización correcta de la tabla comparativa
Given que el usuario está en la sección "Planes y precios"
When la tabla comparativa se muestra
Then debe ver la función "<funcion>" en las columnas "<plan_gratuito>" y "<plan_premium>" según corresponda

Examples:
| funcion            | plan_gratuito | plan_premium |
| Tareas básicas     | incluido      | incluido     |
| Reportes avanzados | no incluido   | incluido     |

Scenario Outline: Interacción con información detallada de funciones
Given que el usuario revisa la tabla comparativa
When selecciona la función "<funcion>"
Then el sistema muestra un cuadro emergente con detalles de "<funcion>"

Examples:
| funcion            |
| Tareas básicas     |
| Reportes avanzados |
