Feature: Asignación digital de tareas y turnos
Como supervisor quiero asignar tareas y turnos de manera digital
para optimizar la planificación del trabajo.

Scenario Outline: Asignación digital de tareas
Given que el supervisor debe distribuir el trabajo entre técnicos
When selecciona al trabajador "<tecnico>" y la tarea "<tarea>" en el módulo "Asignación"
Then el sistema debe registrar la asignación y notificar al técnico "<tecnico>"

Examples:
| tecnico | tarea                    |
| Carlos  | Inspección de medidor    |
| Ana     | Mantenimiento de tablero |

Scenario Outline: Gestión y visualización de turnos
Given que el supervisor ha definido los turnos de trabajo
When consulta la vista general de planificación
Then el sistema debe mostrar el turno "<turno>" del técnico "<tecnico>" como "<estado_turno>"

Examples:
| tecnico | turno   | estado_turno |
| Carlos  | Mañana  | asignado     |
| Ana     | Tarde   | asignado     |
