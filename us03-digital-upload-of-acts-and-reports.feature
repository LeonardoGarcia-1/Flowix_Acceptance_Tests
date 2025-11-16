Feature: Subida digital de actas y reportes
Como trabajador de campo formal quiero subir actas o reportes desde mi celular
para evitar el uso de papel.

Scenario Outline: Carga exitosa de acta o reporte
Given que el trabajador tiene una conexión activa a internet
And se encuentra en la sección "Documentos enviados"
When selecciona el archivo "<nombre_archivo>" en formato "<formato>" y presiona el botón "Subir"
Then el sistema debe cargar el documento correctamente y mostrar el mensaje "Documento subido con éxito"

Examples:
| nombre_archivo        | formato |
| acta-inspeccion-01    | PDF     |
| reporte-mantenimiento | imagen  |

Scenario Outline: Consulta de archivos subidos
Given que el trabajador ya ha subido actas o reportes previamente
When accede a la sección "Documentos enviados"
Then el sistema debe mostrar el archivo "<nombre_archivo>" con la fecha "<fecha>" y el estado "<estado_envio>"

Examples:
| nombre_archivo        | fecha      | estado_envio |
| acta-inspeccion-01    | 2025-11-01 | enviado      |
| reporte-mantenimiento | 2025-11-05 | recibido     |
