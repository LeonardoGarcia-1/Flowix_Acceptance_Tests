Feature: Registro automático de trabajos realizados
Como técnico de campo quiero un registro automático de mis trabajos realizados
para construir mi experiencia laboral con cada tarea completada.

Scenario Outline: Registro automático tras terminar una tarea
Given que el técnico completa la tarea asignada "<tarea>"
When marca la tarea como finalizada en el sistema
Then el sistema debe registrar automáticamente en su historial la fecha "<fecha>", el cliente "<cliente>", el tipo de servicio "<tipo_servicio>" y la duración "<duracion>"

Examples:
| tarea                    | fecha      | cliente   | tipo_servicio | duracion |
| Instalación de medidor   | 2025-11-10 | Cliente A | instalación   | 01:30    |
| Revisión de transformador| 2025-11-11 | Cliente B | mantenimiento | 02:00    |

Scenario Outline: Consulta de historial de trabajos
Given que el técnico ha completado varios trabajos
When accede a su perfil o historial laboral
Then el sistema debe mostrar los trabajos realizados ordenados por fecha, incluyendo la tarea "<tarea>" y el cliente "<cliente>"

Examples:
| tarea                    | cliente   |
| Instalación de medidor   | Cliente A |
| Revisión de transformador| Cliente B |
