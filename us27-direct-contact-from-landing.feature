Feature: Contacto directo desde la landing
Como supervisor quiero contactar al equipo desde la landing page
para resolver dudas antes de registrarme.

Scenario Outline: Envío de formulario de contacto
Given que el supervisor selecciona la sección "Contacto"
When completa el formulario con nombre "<nombre>" y correo "<correo>" y presiona "Enviar"
Then la landing muestra el mensaje "<mensaje_confirmacion>"

Examples:
| nombre | correo                 | mensaje_confirmacion              |
| Luis   | luis@empresa.com       | Mensaje enviado correctamente     |
| Ana    | ana@empresa.com        | Hemos recibido tu consulta        |

Scenario Outline: Respuesta automática por correo
Given que el mensaje fue enviado desde el formulario de contacto
When el supervisor revisa su correo "<correo>"
Then debe recibir una respuesta automática con el asunto "<asunto>"

Examples:
| correo           | asunto                      |
| luis@empresa.com | Gracias por contactarnos    |
| ana@empresa.com  | Hemos recibido tu mensaje   |
