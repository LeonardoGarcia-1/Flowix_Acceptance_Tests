Feature: Resumen automático de experiencia laboral
Como gerente quiero ver un resumen de la experiencia laboral de cada técnico
para tomar decisiones más rápidas sin revisar todos los currículos.

Scenario Outline: Generación automática de resumen
Given que el sistema tiene registros de trabajos para el técnico "<tecnico>"
When el gerente consulta el perfil de "<tecnico>"
Then el sistema debe mostrar un resumen con "<proyectos>" proyectos completados, "<anios_experiencia>" años de experiencia y "<certificaciones>" certificaciones

Examples:
| tecnico | proyectos | anios_experiencia | certificaciones |
| Carlos  | 15        | 5                 | 3               |
| Ana     | 10        | 4                 | 2               |

Scenario Outline: Visualización del resumen en el panel de gestión
Given que el gerente necesita comparar varios técnicos
When accede al panel de gestión de personal
Then el sistema debe mostrar un resumen para "<tecnico>" con proyectos "<proyectos>" y años de experiencia "<anios_experiencia>"

Examples:
| tecnico | proyectos | anios_experiencia |
| Carlos  | 15        | 5                 |
| Ana     | 10        | 4                 |
