Feature: Consulta de preguntas frecuentes en la landing
Como técnico quiero revisar respuestas rápidas en la landing page
para no depender del soporte.

Scenario Outline: Acordeón funcional de preguntas frecuentes
Given que estoy en la sección "FAQ"
When selecciono la pregunta "<pregunta>"
Then se despliega la respuesta "<respuesta>"

Examples:
| pregunta                             | respuesta                         |
| ¿Cómo restablecer mi contraseña?     | Puedes restablecerla desde Perfil |
| ¿Cómo contactar soporte?             | Usa el formulario de contacto     |

Scenario Outline: Comportamiento independiente de preguntas
Given que tengo una pregunta desplegada
When abro la pregunta "<otra_pregunta>"
Then la pregunta anterior puede permanecer abierta o cerrarse según la configuración

Examples:
| otra_pregunta                        |
| ¿Cómo ver mis tareas de hoy?         |
