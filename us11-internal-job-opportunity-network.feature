Feature: Red interna para nuevas oportunidades laborales
Como trabajador de campo quiero acceder a una red interna de oportunidades
para encontrar nuevos proyectos en distintas empresas.

Scenario Outline: Acceso a la red interna de oportunidades
Given que el trabajador "<trabajador>" tiene un perfil activo
When ingresa a la sección "Red de oportunidades"
Then debe visualizar proyectos como "<proyecto>" con el puesto "<puesto>" y la ubicación "<ubicacion>"

Examples:
| trabajador | proyecto              | puesto              | ubicacion |
| Juan       | Proyecto expansión    | Técnico de campo    | Lima      |
| Ana        | Proyecto mantenimiento| Supervisor de cuadrilla| Arequipa |

Scenario Outline: Postulación a un nuevo proyecto
Given que el trabajador revisa las oportunidades disponibles
When selecciona el proyecto "<proyecto>" y presiona el botón "Postular"
Then el sistema debe registrar su postulación y mostrar el mensaje "<mensaje_confirmacion>"

Examples:
| proyecto            | mensaje_confirmacion             |
| Proyecto expansión  | Postulación enviada con éxito    |
| Proyecto mantenimiento| Tu postulación ha sido registrada |
