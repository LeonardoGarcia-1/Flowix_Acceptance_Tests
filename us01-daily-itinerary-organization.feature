Feature: Organización de itinerario diario
Como técnico de campo quiero visualizar mis tareas del día
para distribuir mejor mis tiempos y organizar mis labores de forma eficiente.

Scenario Outline: Visualización de tareas del día
Given que "<tecnico>" ha iniciado sesión en el sistema
And accede al módulo "Itinerario diario"
When consulta las tareas asignadas para "<fecha>"
Then debe ver una tarea para el cliente "<cliente>" en la ubicación "<ubicacion>" a la hora "<hora>"

Examples:
| tecnico | fecha      | cliente   | ubicacion | hora  |
| Carlos  | 2025-11-15 | Cliente A | Lurín     | 09:00 |
| Ana     | 2025-11-15 | Cliente B | Callao    | 11:30 |

Scenario Outline: Actualización automática de tareas asignadas
Given que "<tecnico>" tiene abierto el módulo "Itinerario diario"
When el supervisor registra un cambio en la tarea "<tarea>" para "<fecha>" y el técnico actualiza la vista
Then el itinerario diario debe mostrar la tarea "<tarea>" con el cliente "<cliente>" y la ubicación "<ubicacion>" actualizados

Examples:
| tecnico | fecha      | tarea                  | cliente   | ubicacion |
| Carlos  | 2025-11-15 | Mantenimiento de línea | Cliente A | Lurín     |
| Ana     | 2025-11-15 | Inspección de red      | Cliente B | Callao    |
