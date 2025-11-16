Feature: Barra de navegación fija en la landing
Como usuario de la landing page quiero que la barra de navegación sea fija
para acceder rápidamente a cualquier sección mientras hago scroll.

Scenario Outline: Barra fija visible durante el scroll
Given que el usuario está navegando la landing page
When hace scroll hacia abajo
Then la barra de navegación permanece visible en la parte superior

Examples:
| seccion_actual |
| Beneficios     |
| Contacto       |

Scenario Outline: Acceso rápido a secciones desde la barra fija
Given que la barra de navegación se mantiene fija
When el usuario selecciona la opción "<opcion_menu>"
Then la página lo dirige a la sección correspondiente

Examples:
| opcion_menu |
| Funciones   |
| Contacto    |
