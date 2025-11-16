Feature: Generación automática de cronogramas
Como supervisor quiero generar automáticamente cronogramas semanales
para ahorrar tiempo de organización.

Scenario Outline: Generación automática del cronograma
Given que el supervisor cuenta con tareas y disponibilidad del personal
When selecciona la opción "Generar cronograma semanal"
Then el sistema debe crear un cronograma para la semana "<semana>" asignando tareas de forma equilibrada

Examples:
| semana         |
| 2025-11-17-23  |
| 2025-11-24-30  |

Scenario Outline: Revisión y edición del cronograma generado
Given que el cronograma semanal ha sido generado
When el supervisor visualiza el cronograma de la semana "<semana>" y edita la tarea "<tarea>"
Then el sistema debe guardar los cambios en el cronograma antes de publicarlo al equipo

Examples:
| semana         | tarea                 |
| 2025-11-17-23  | Inspección de redes   |
| 2025-11-24-30  | Mantenimiento general |
