Feature: Adaptación responsiva de la landing page
Como usuario móvil quiero que la landing se adapte automáticamente al tamaño de mi pantalla
para navegar y leer el contenido sin dificultad.

Scenario Outline: Adaptación automática al ingresar desde móvil
Given que el usuario accede a la landing desde un dispositivo móvil
When la página carga
Then todos los elementos se ajustan al ancho de la pantalla sin necesidad de hacer zoom

Examples:
| dispositivo |
| teléfono    |
| tablet      |

Scenario Outline: Navegación fluida en formato móvil
Given que el usuario está visualizando la página en vista vertical
When hace scroll o interactúa con botones
Then los elementos mantienen proporción táctil y no se desbordan de la pantalla

Examples:
| accion     |
| hacer scroll |
| tocar botón |
