Feature: Registro de avances con fotos y notas
Como trabajador de campo quiero registrar mis avances con fotos, videos o notas
para evidenciar continuamente mi progreso en cada tarea.

Scenario Outline: Registro exitoso de avances
Given que el trabajador "<trabajador>" se encuentra en una tarea activa "<tarea>"
When adjunta una evidencia de tipo "<tipo_evidencia>" y escribe la nota "<nota>" y presiona el botón "Guardar"
Then el sistema debe almacenar el registro correctamente y asociarlo a la tarea "<tarea>"

Examples:
| trabajador | tarea                     | tipo_evidencia | nota                     |
| Juan       | Instalación de medidor    | foto           | Medidor instalado       |
| Lucía      | Revisión de transformador | nota           | Ajuste de conexiones ok |

Scenario Outline: Visualización de registros guardados
Given que el trabajador "<trabajador>" ya ha registrado avances previamente en la tarea "<tarea>"
When accede al historial de la tarea "<tarea>"
Then el sistema debe mostrar registros con fecha "<fecha>" y tipo de evidencia "<tipo_evidencia>"

Examples:
| trabajador | tarea                  | fecha      | tipo_evidencia |
| Juan       | Instalación de medidor | 2025-11-10 | foto           |
| Lucía      | Revisión de red        | 2025-11-09 | nota           |
