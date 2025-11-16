Feature: Recomendaciones de candidatos según historial
Como gerente quiero recibir recomendaciones sobre candidatos más adecuados
según su historial.

Scenario Outline: Generación de recomendaciones automáticas
Given que existen varios candidatos registrados con información laboral
When el gerente consulta la vacante "<vacante>"
Then el sistema debe mostrar candidatos recomendados como "<candidato>" con prioridad "<prioridad>"

Examples:
| vacante            | candidato | prioridad |
| Técnico de campo   | Pedro     | alta      |
| Supervisor de zona | Laura     | media     |

Scenario Outline: Actualización de recomendaciones
Given que el historial de los candidatos se actualiza con nueva experiencia
When se registra una nueva certificación "<certificacion>" para el candidato "<candidato>"
Then las recomendaciones deben recalcularse para reflejar los nuevos perfiles

Examples:
| candidato | certificacion              |
| Pedro     | Curso de redes avanzadas   |
| Laura     | Certificación en seguridad |
