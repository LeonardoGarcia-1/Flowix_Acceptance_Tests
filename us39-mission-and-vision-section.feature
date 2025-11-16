Feature: Sección de Misión y Visión en la landing
Como usuario nuevo quiero encontrar una sección de misión y visión
para conocer los valores y el propósito de la empresa.

Scenario Outline: Visualización de la misión y visión
Given que el usuario accede a la sección de funcionalidades
When llega al bloque "Misión y Visión"
Then debe visualizar dos tarjetas con la misión "<mision>" y la visión "<vision>"

Examples:
| mision                          | vision                               |
| Facilitar la gestión en campo   | Ser la plataforma líder en el sector |

Scenario Outline: Interacción con la sección informativa
Given que el usuario quiere más información
When selecciona la opción "Leer más" en la tarjeta "<tipo_texto>"
Then la landing muestra información ampliada sobre "<tipo_texto>"

Examples:
| tipo_texto |
| misión     |
| visión     |
