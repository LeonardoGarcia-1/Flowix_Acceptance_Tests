Feature: Gestión digital de viáticos
Como técnico de campo quiero gestionar mis viáticos de forma digital
para no depender de procesos manuales.

Scenario Outline: Registro de solicitud de viáticos
Given que el técnico "<tecnico>" necesita registrar una solicitud de viático
When completa el formulario con el monto "<monto>", el motivo "<motivo>" y adjunta el comprobante "<comprobante>"
And presiona el botón "Guardar solicitud"
Then el sistema debe guardar la solicitud correctamente y mostrar el mensaje "Solicitud registrada"

Examples:
| tecnico | monto | motivo            | comprobante         |
| Carlos  | 50.00 | Almuerzo en ruta  | boleta-almuerzo.pdf |
| Ana     | 30.00 | Transporte local  | ticket-bus.png      |

Scenario Outline: Consulta del estado del viático
Given que el técnico "<tecnico>" ha enviado solicitudes de viáticos
When accede a la sección "Mis viáticos"
Then el sistema debe mostrar la solicitud con estado "<estado>" y fecha de registro "<fecha_registro>"

Examples:
| tecnico | estado   | fecha_registro |
| Carlos  | pendiente| 2025-11-10     |
| Ana     | aprobada | 2025-11-08     |
