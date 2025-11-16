Feature: Reportes automáticos del progreso de proyectos
Como gerente quiero acceder a reportes automáticos del estado de los proyectos
para evaluar el rendimiento.

Scenario Outline: Generación automática de reporte
Given que el proyecto "<proyecto>" tiene tareas y avances registrados
When se cumple la frecuencia programada "<frecuencia>"
Then el sistema debe generar un reporte automático con el resumen del progreso

Examples:
| proyecto       | frecuencia |
| Proyecto Norte | diaria     |
| Proyecto Sur   | semanal    |

Scenario Outline: Acceso y visualización del reporte
Given que el gerente accede al módulo "Reportes"
When selecciona el proyecto "<proyecto>"
Then el sistema debe mostrar el reporte actualizado y permitir la descarga en "<formato>"

Examples:
| proyecto       | formato |
| Proyecto Norte | PDF    |
| Proyecto Sur   | Excel  |
