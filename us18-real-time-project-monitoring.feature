Feature: Monitoreo en tiempo real de proyectos
Como gerente quiero monitorear el progreso de los proyectos en tiempo real
para tomar decisiones informadas.

Scenario Outline: Visualización del progreso en tiempo real
Given que el gerente accede al panel de monitoreo
When el sistema recibe actualizaciones del proyecto "<proyecto>"
Then debe mostrar el porcentaje de progreso "<progreso>" y el estado "<estado>"

Examples:
| proyecto           | progreso | estado   |
| Proyecto Norte     | 60%      | En curso |
| Proyecto Sur       | 85%      | En curso |

Scenario Outline: Actualización automática de indicadores
Given que los técnicos registran avances en sus dispositivos
When se sincronizan los datos del proyecto "<proyecto>"
Then los indicadores del tablero del gerente deben actualizarse automáticamente sin recargar la página

Examples:
| proyecto       |
| Proyecto Norte |
| Proyecto Sur   |
