Feature: Comparación entre plan gratuito y plan de pago en la landing
Como cliente potencial quiero ver una comparación clara entre el plan gratuito y el de pago
para entender qué beneficios adicionales obtengo al usar la versión premium.

Scenario Outline: Visualización de tabla comparativa de planes
Given que el usuario ingresa a la sección "Planes y Precios"
When la tabla comparativa se muestra
Then se presentan diferencias en la característica "<caracteristica>" entre el plan "<plan_a>" y el plan "<plan_b>"

Examples:
| caracteristica   | plan_a   | plan_b   |
| Límite de usuarios| Gratuito | Premium  |
| Soporte dedicado  | Gratuito | Premium  |

Scenario Outline: Interacción con detalles de cada plan
Given que el usuario quiere conocer más sobre una característica del plan premium
When selecciona el botón "Más detalles" en la fila de "<caracteristica>"
Then el sistema muestra una explicación ampliada sin salir de la landing

Examples:
| caracteristica   |
| Límite de usuarios|
| Soporte dedicado  |
