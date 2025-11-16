Feature: Planificación anticipada de actividades
Como técnico de campo quiero planificar mis actividades con anticipación
para optimizar mi jornada laboral.

Scenario Outline: Registro de planificación anticipada
Given que el técnico desea organizar sus tareas para los próximos días
When accede al módulo "Planificación"
And selecciona la fecha "<fecha>"
And agrega la actividad "<actividad>" con el cliente "<cliente>" y la ubicación "<ubicacion>"
Then el sistema debe guardar la actividad prevista en el calendario

Examples:
| fecha      | actividad                | cliente   | ubicacion |
| 2025-11-20 | Inspección de equipos    | Cliente A | Lurín     |
| 2025-11-21 | Mantenimiento preventivo | Cliente B | Callao    |

Scenario Outline: Visualización de actividades programadas
Given que el técnico ya ha registrado actividades anticipadas
When consulta su calendario o itinerario para la fecha "<fecha>"
Then el sistema debe mostrar las actividades programadas con el estado "<estado>"

Examples:
| fecha      | estado     |
| 2025-11-20 | planificada|
| 2025-11-21 | planificada|
