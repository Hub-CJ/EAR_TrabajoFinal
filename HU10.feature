Feature: Búsqueda Eficiente

   Como adulto promedio
   quiero que la app cuente con la opción de realizar búsquedas eficientes 
   para ahorrar tiempo en la selección y registro de dietas saludables diarias.

Scenario: Un adulto promedio realiza la búsqueda de la dieta saludable que va acorde sus gustos.
Dado que el adulto promedio se encuentra en la sección ¿Qué quieres comer hoy?.
Cuando el adulto promedio escriba su <preferencia alimenticia> 
Y seleccione la opción Buscar dieta según mis gustos
Entonces la aplicación buscara dietas que presenten coincidencias con su <preferencia alimenticia> 
Y al encontrarlas, muestra la <lista de dietas con coincidencias> 

Examples: Datos de entrada
    | preferencia alimenticia |
    | Salmón                  |

Examples: Datos de salida
    | lista de dietas con coincidencias | 
    | Ventana emergente que muestra una lista de menús saludables que coinciden con la preferencia del usuario |


Scenario: Un adulto promedio no logra realizar la búsqueda de la dieta saludable que va acorde sus gustos.
Dado que el adulto promedio se encuentra en la sección ¿Qué quieres comer hoy?.
Cuando el adulto promedio escriba su <preferencia alimenticia> 
Entonces la aplicación buscara dietas que presenten coincidencias con su <preferencia alimenticia> 
Y al no encontrarlas, muestra la <lista de dietas predeterminadas> 

Examples: Datos de entrada
    | preferencia alimenticia |
    | Carne Kobe              |

Examples: Datos de salida
    | lista de dietas predeterminadas                                             | 
    | Ventana emergente que muestra una lista de menús saludables predeterminados |