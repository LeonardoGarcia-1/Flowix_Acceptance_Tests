Feature: Comunicación rápida con supervisor
Como trabajador de campo quiero comunicarme rápidamente con mi supervisor
para confirmar si las zonas donde trabajaré están habilitadas.

Scenario Outline: Envío de mensaje al supervisor
Given que el trabajador necesita confirmar el estado de la zona "<zona>"
When accede a la opción "Comunicación con supervisor"
And envía el mensaje "<mensaje>"
Then el sistema debe enviar el mensaje de forma inmediata y mostrar la confirmación "Mensaje entregado"

Examples:
| zona   | mensaje                               |
| Zona A | ¿La zona A está habilitada hoy?       |
| Zona B | ¿Puedo ingresar a la zona B esta tarde?|

Scenario Outline: Respuesta del supervisor
Given que el supervisor recibe la consulta del trabajador
When responde con el mensaje "<respuesta>"
Then el trabajador debe recibir la respuesta en tiempo real en el chat integrado

Examples:
| respuesta                          |
| La zona A está habilitada          |
| La zona B está restringida por hoy |
