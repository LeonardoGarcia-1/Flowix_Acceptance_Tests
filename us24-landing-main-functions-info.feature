Feature: Información sobre las funciones del sistema en la landing
Como usuario nuevo quiero ver imágenes de funciones y un breve resumen
para entender en qué consisten las funciones de la app.

Scenario Outline: Visualización correcta de imágenes de funciones
Given que soy un usuario nuevo
When ingreso a la landing page
Then debo ver una imagen de la función "<funcion>" que sea clara y visible en tamaño móvil

Examples:
| funcion                |
| Itinerario diario      |
| Gestión de viáticos    |

Scenario Outline: Visualización correcta de información de funciones
Given que soy un usuario nuevo
When doy clic a la imagen de la función "<funcion>"
Then debo ver un recuadro con un breve resumen de "<resumen>"

Examples:
| funcion           | resumen                                 |
| Itinerario diario | Organización de tareas por día          |
| Gestión de viáticos| Registro digital de gastos de campo    |
