Feature: Descarga del folleto desde la landing
Como supervisor quiero descargar un folleto informativo desde la landing
para compartirlo con mi equipo.

Scenario Outline: Descarga correcta del folleto
Given que el supervisor selecciona la opción "Descargar folleto"
When se completa la acción de descarga
Then el archivo "<nombre_archivo>" en formato "<formato>" se guarda localmente

Examples:
| nombre_archivo           | formato |
| folleto-flowix           | PDF     |
| folleto-funciones-basicas| PDF     |

Scenario Outline: Manejo de error en descarga
Given que ocurre un fallo durante la descarga
When el folleto no se completa
Then la landing muestra el mensaje "<mensaje_error>"

Examples:
| mensaje_error                      |
| Error al descargar, inténtalo de nuevo |
