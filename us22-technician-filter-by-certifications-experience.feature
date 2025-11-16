Feature: Filtro de técnicos por certificaciones o experiencia
Como gerente quiero filtrar técnicos por certificaciones o experiencia específica
para asignarlos mejor.

Scenario Outline: Filtro por certificación
Given que existe una base de datos con técnicos y sus certificaciones
When el gerente selecciona la certificación "<certificacion>"
Then el sistema debe mostrar técnicos que cumplan con esa certificación como "<tecnico>"

Examples:
| certificacion            | tecnico |
| Certificación eléctrica  | Carlos  |
| Certificación en redes   | Ana     |

Scenario Outline: Filtro por experiencia
Given que los técnicos tienen años de experiencia registrados
When el gerente aplica un filtro por experiencia mínima "<anios_minimos>"
Then el sistema debe mostrar técnicos como "<tecnico>" que cumplan con el criterio

Examples:
| anios_minimos | tecnico |
| 3             | Carlos  |
| 5             | Ana     |
