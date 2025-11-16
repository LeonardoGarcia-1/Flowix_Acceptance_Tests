Feature: Validación de antecedentes and referencias
Como gerente quiero validar referencias y antecedentes de candidatos
para asegurar la confiabilidad del personal.

Scenario Outline: Validación de antecedentes laborales
Given que el gerente revisa al candidato "<candidato>"
When accede al módulo "Validación de antecedentes"
Then el sistema debe mostrar empleadores anteriores como "<empleador>" con el cargo "<cargo>" y las fechas "<fechas>"

Examples:
| candidato | empleador          | cargo            | fechas          |
| Pedro     | Empresa Energía SA | Técnico de campo | 2020-2023       |
| Laura     | Servicios Norte    | Supervisor       | 2018-2022       |

Scenario Outline: Registro de referencias certificadas
Given que el gerente ha validado las referencias del candidato "<candidato>"
When registra en el sistema el resultado "<resultado>" de la referencia "<tipo_referencia>"
Then el perfil del candidato debe actualizarse con el estado "<estado_validacion>" y la fecha "<fecha_validacion>"

Examples:
| candidato | tipo_referencia | resultado        | estado_validacion | fecha_validacion |
| Pedro     | laboral         | Referencia válida| validado          | 2025-11-01       |
| Laura     | personal        | Referencia positiva| validado        | 2025-11-03       |
