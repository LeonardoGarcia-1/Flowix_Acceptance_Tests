Feature: Comunicación integrada con otras herramientas
Como gerente quiero acceder a herramientas integradas como Teams, Office o WhatsApp
para no perder tiempo cambiando de aplicación.

Scenario Outline: Acceso directo a herramientas
Given que el sistema cuenta con integraciones activas
When el gerente selecciona la opción "<herramienta>" desde la plataforma
Then debe poder abrir la herramienta dentro de la plataforma sin cambiar de aplicación

Examples:
| herramienta |
| Teams       |
| WhatsApp    |

Scenario Outline: Sincronización automática de datos
Given que las herramientas externas están vinculadas al sistema
When se envía o recibe información desde "<herramienta>"
Then el sistema debe sincronizar automáticamente las actualizaciones

Examples:
| herramienta |
| Teams       |
| Office      |
