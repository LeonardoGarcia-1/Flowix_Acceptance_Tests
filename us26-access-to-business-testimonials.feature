Feature: Acceso a testimonios empresariales en la landing
Como supervisor quiero ver testimonios de empresas que usan la plataforma
para confiar en su efectividad.

Scenario Outline: Visualización de testimonios
Given que el supervisor llega a la sección "Testimonios"
When la página carga
Then se muestran reseñas como "<nombre_cliente>" de la empresa "<empresa>"

Examples:
| nombre_cliente | empresa         |
| María          | Energía Andina  |
| José           | Servicios Sur   |

Scenario Outline: Lectura extendida de testimonios
Given que el supervisor está en la sección "Testimonios"
When hace clic en "Leer más" del testimonio de "<nombre_cliente>"
Then la landing muestra la experiencia completa del cliente

Examples:
| nombre_cliente |
| María          |
| José           |
