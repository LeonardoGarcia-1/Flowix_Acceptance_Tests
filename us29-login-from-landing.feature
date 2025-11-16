Feature: Iniciar sesión desde la landing
Como usuario prevenido quiero iniciar sesión en la landing page
para vincular mi correo y recibir notificaciones de novedades.

Scenario Outline: Visualización del módulo de inicio de sesión
Given que soy un usuario prevenido que ingresa a la landing page
When navego hasta la sección donde se muestra la opción para iniciar sesión
Then debo ver un formulario con campos para correo y contraseña y un mensaje "<mensaje_info>"

Examples:
| mensaje_info                                      |
| Vincula tu correo para recibir novedades          |
| Inicia sesión para mantenerte informado           |

Scenario Outline: Inicio de sesión exitoso y vinculación del correo
Given que he ingresado mi correo "<correo>" y contraseña válidos
When presiono el botón "Iniciar sesión"
Then el sistema debe permitirme acceder y vincular mi correo mostrando el mensaje "<mensaje_confirmacion>"

Examples:
| correo               | mensaje_confirmacion                        |
| usuario@correo.com   | Tu correo ha sido vinculado correctamente   |
