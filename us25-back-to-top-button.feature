Feature: Botón de regresar al inicio en la landing
Como usuario nuevo o frecuente quiero un botón al final de la landing
para regresar al inicio sin hacer scroll manual.

Scenario Outline: Visualización del botón al llegar al final
Given que soy un usuario nuevo o frecuente
When deslizo hacia abajo y llego al final de la landing page
Then debe aparecer un botón visible "<texto_boton>" para regresar al inicio

Examples:
| texto_boton        |
| Volver al inicio   |
| Ir arriba          |

Scenario Outline: Funcionamiento del botón para volver al inicio
Given que estoy ubicado al final de la landing page y veo el botón "<texto_boton>"
When presiono el botón "<texto_boton>"
Then la página debe llevarme automáticamente al inicio con una transición suave

Examples:
| texto_boton      |
| Volver al inicio |
| Ir arriba        |
