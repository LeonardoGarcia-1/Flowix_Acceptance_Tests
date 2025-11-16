Feature: Coordinación centralizada con el equipo
Como supervisor quiero coordinar con mi equipo en una aplicación centralizada
para evitar depender de WhatsApp.

Scenario Outline: Comunicación interna en la aplicación
Given que el supervisor "<supervisor>" necesita enviar indicaciones
When accede al chat interno y envía el mensaje "<mensaje>" al grupo "<grupo>"
Then el sistema debe entregar el mensaje en tiempo real a los miembros del grupo "<grupo>"

Examples:
| supervisor | grupo          | mensaje                       |
| Luis       | Técnicos zona A| Revisar tareas de la mañana   |
| Marta      | Técnicos zona B| Confirmar asistencia de turno |

Scenario Outline: Seguimiento de conversaciones y archivos
Given que el supervisor y su equipo han intercambiado mensajes y documentos
When el supervisor revisa el historial de comunicación del grupo "<grupo>"
Then el sistema debe mostrar las conversaciones y permitir descargar el archivo "<archivo>"

Examples:
| grupo          | archivo                |
| Técnicos zona A| plan-mantenimiento.pdf |
| Técnicos zona B| reporte-incidencias.xlsx |
