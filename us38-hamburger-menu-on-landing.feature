Feature: Menú hamburguesa en la landing
Como usuario móvil quiero que la landing incluya un menú hamburguesa
para acceder fácilmente a las secciones principales en pantallas pequeñas.

Scenario Outline: Apertura del menú hamburguesa
Given que el usuario navega la landing desde un dispositivo móvil
When toca el ícono de menú hamburguesa
Then se despliega un menú con secciones como "<seccion>"

Examples:
| seccion    |
| Funciones  |
| Beneficios |

Scenario Outline: Cierre del menú hamburguesa
Given que el menú hamburguesa está abierto
When el usuario toca nuevamente el ícono o selecciona la opción "<seccion>"
Then el menú se cierra automáticamente

Examples:
| seccion    |
| Funciones  |
| Beneficios |
