Feature: Conocer beneficios de la app en la landing
Como usuario quiero ver en la landing los beneficios del sistema
para saber cómo me ayuda en mi trabajo diario.

Scenario Outline: Beneficios visibles en la sección correspondiente
Given que bajo a la sección "Beneficios"
When reviso el contenido
Then veo ventajas como "<beneficio>"

Examples:
| beneficio                 |
| Tareas claras             |
| Comunicación rápida       |

Scenario Outline: Tarjetas interactivas de beneficios
Given que hay tarjetas de beneficios en la sección "Beneficios"
When paso el cursor sobre la tarjeta "<beneficio>"
Then se muestran más detalles sobre "<beneficio>"

Examples:
| beneficio           |
| Tareas claras       |
| Reportes simples    |
