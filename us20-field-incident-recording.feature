Feature: Registro de incidencias en campo
Como supervisor quiero registrar incidencias de campo
para tener un historial de problemas frecuentes.

Scenario Outline: Registro de un nuevo inconveniente
Given que el supervisor detecta un problema en campo
When completa el formulario de incidencias con la descripción "<descripcion>", la fecha "<fecha>" y la ubicación "<ubicacion>"
Then el sistema debe guardar la incidencia y mostrar el mensaje "Incidencia registrada"

Examples:
| descripcion           | fecha      | ubicacion |
| Falla en transformador| 2025-11-10 | Lurín     |
| Corte de energía      | 2025-11-11 | Callao    |

Scenario Outline: Consulta del historial de inconvenientes
Given que existen incidencias registradas previamente
When el supervisor ingresa al historial de incidencias
Then el sistema debe mostrar la incidencia "<descripcion>" con estado "<estado>"

Examples:
| descripcion           | estado   |
| Falla en transformador| abierta  |
| Corte de energía      | cerrada  |
