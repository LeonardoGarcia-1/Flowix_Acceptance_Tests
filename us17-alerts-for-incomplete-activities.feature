Feature: Alertas por actividades incompletas
Como supervisor quiero recibir alertas cuando un técnico no complete una actividad
para tomar medidas oportunas.

Scenario Outline: Generación automática de alertas
Given que la actividad "<actividad>" tiene fecha y hora límite "<fecha_hora_limite>"
When el técnico "<tecnico>" no marca la actividad como completada dentro del plazo
Then el sistema debe generar una alerta para el supervisor indicando al técnico "<tecnico>" y la tarea "<actividad>"

Examples:
| actividad                | fecha_hora_limite  | tecnico |
| Inspección de medidor    | 2025-11-15 10:00   | Carlos  |
| Mantenimiento de tablero | 2025-11-15 15:00   | Ana     |

Scenario Outline: Visualización de alertas en el panel del supervisor
Given que existen actividades incompletas por parte del equipo
When el supervisor accede a su panel de control
Then el sistema debe mostrar una alerta con la tarea "<actividad>" y el tiempo de retraso "<tiempo_retraso>"

Examples:
| actividad                | tiempo_retraso |
| Inspección de medidor    | 01:30          |
| Mantenimiento de tablero | 02:15          |
