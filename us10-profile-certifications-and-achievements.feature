Feature: Perfil con certificaciones y logros internos
Como técnico de campo quiero que mi perfil muestre mis certificaciones y logros internos
para acceder a nuevas oportunidades laborales.

Scenario Outline: Visualización de certificados y logros
Given que el técnico "<tecnico>" cuenta con certificaciones o reconocimientos internos
When accede a su perfil dentro del sistema
Then el sistema debe mostrar la certificación "<certificacion>" y el logro "<logro>" con su fecha "<fecha_obtencion>"

Examples:
| tecnico | certificacion           | logro                         | fecha_obtencion |
| Carlos  | Certificación eléctrica | Técnico del mes               | 2025-06-10      |
| Ana     | Certificación en redes  | Reconocimiento por puntualidad| 2025-08-15      |

Scenario Outline: Actualización de certificaciones y logros
Given que el técnico completa un curso o proyecto reconocido por la empresa
When se valida su cumplimiento y se registra la certificación "<certificacion>"
Then el sistema debe actualizar el perfil agregando la nueva certificación con fecha "<fecha_obtencion>"

Examples:
| certificacion               | fecha_obtencion |
| Curso de seguridad en campo | 2025-10-01      |
| Curso de redes avanzadas    | 2025-09-20      |
