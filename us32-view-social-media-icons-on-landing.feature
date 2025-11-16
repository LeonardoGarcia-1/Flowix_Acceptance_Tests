Feature: Visualización de íconos de redes sociales en la landing
Como usuario quiero visualizar íconos de redes sociales de la empresa
para seguirla y estar al día de las últimas novedades.

Scenario Outline: Visualización de íconos de redes sociales
Given que soy un usuario que navega por la landing page
When llego a la sección de redes sociales
Then debo ver íconos de redes como "<red_social>"

Examples:
| red_social |
| Facebook   |
| Instagram  |

Scenario Outline: Redirección correcta al seleccionar un ícono
Given que estoy visualizando los íconos de redes sociales
When hago clic en el ícono de "<red_social>"
Then debo ser redirigido a la página oficial en una nueva pestaña

Examples:
| red_social |
| Facebook   |
| TikTok     |
