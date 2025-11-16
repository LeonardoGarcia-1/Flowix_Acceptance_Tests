Feature: Notificaciones de cambios en itinerario
Como trabajador de campo quiero recibir notificaciones sobre cambios en mi itinerario
para considerar qué actividades seguirán en marcha y adaptarme a las nuevas actualizaciones.

Scenario Outline: Notificación por modificación de tarea
Given que el supervisor realiza un cambio en la tarea "<tarea>" del itinerario de "<trabajador>"
When la modificación es guardada en el sistema
Then el trabajador debe recibir una notificación con el mensaje "<mensaje_notificacion>"

Examples:
| tarea                  | trabajador | mensaje_notificacion                          |
| Mantenimiento de red   | Juan       | Se actualizó la hora de tu tarea asignada     |
| Inspección de medidor  | Ana        | Se actualizó la ubicación de tu tarea asignada|

Scenario Outline: Acceso al detalle de la actualización
Given que el trabajador recibe una notificación de cambio en su itinerario
When selecciona la notificación "<mensaje_notificacion>" desde su dispositivo
Then el sistema debe mostrar el detalle actualizado con fecha "<fecha>", hora "<hora>", cliente "<cliente>" y ubicación "<ubicacion>"

Examples:
| mensaje_notificacion                  | fecha      | hora  | cliente   | ubicacion |
| Se actualizó la hora de tu tarea      | 2025-11-15 | 10:30 | Cliente A | Lurín     |
| Se actualizó la ubicación de tu tarea | 2025-11-15 | 14:00 | Cliente B | Callao    |
