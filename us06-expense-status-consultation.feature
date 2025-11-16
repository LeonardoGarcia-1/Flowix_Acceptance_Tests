Feature: Consulta del estado de viáticos
Como técnico de campo quiero conocer el estado de aprobación de mis viáticos
para tener mayor claridad sobre mis gastos.

Scenario Outline: Visualización de estado de viáticos
Given que el técnico "<tecnico>" ha realizado solicitudes de viáticos previamente
When accede a la sección "Estado de viáticos"
Then el sistema debe mostrar la solicitud con estado "<estado>" y monto "<monto>"

Examples:
| tecnico | estado   | monto |
| Carlos  | pendiente| 50.00 |
| Ana     | rechazada| 30.00 |

Scenario Outline: Notificación de cambio de estado
Given que una solicitud de viático de "<tecnico>" cambia de estado
When el supervisor aprueba o rechaza la solicitud
Then el sistema debe notificar al técnico con el nuevo estado "<estado_nuevo>" y el comentario "<comentario>"

Examples:
| tecnico | estado_nuevo | comentario                    |
| Carlos  | aprobada     | Viático aprobado correctamente|
| Ana     | rechazada    | Falta comprobante válido      |
