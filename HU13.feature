Feature: Sugerencias de la app
    Como adulto promedio, 
    quiero sugerencias sobre alimentos que me ayuden a explorar más allá de mi zona de confort 
    para tener una mayor variedad en mi alimentación.

Scenario: Adulto promedio desea obtener sugerencias sobre nuevos alimentos.
Dado que el adulto promedio se encuentra en la opción de 
<Funcionalidades adicionales> dentro del apartado de 
Configuración de la aplicación.
Cuando el adulto promedio habilita la opción <Recibir sugerencias>
Entonces la aplicación muestra <ventana_emergente> 
3 veces al día, donde muestra <informacion_nutricional> 
Y <beneficios> 
de un alimento no registrado.

Examples: Datos de entrada
    |Funcionalidades adicionales | Recibir sugerencias|
    |True|True|
Examples: Datos de Salida
    | ventana_emergente | informacion_nutricional | beneficios  |
    | Las comidas del dia es manzana   | 52 Cal | excelente antioxidante  |

Scenario: Adulto promedio desea obtener sugerencias de nuevos alimentos de manera inmediata.
Dado que el adulto promedio se encuentra en el apartado del "Menú principal".
Cuando el adulto promedio haga tap en el botón de <Interrogante>.
Entonces la app de inmediato muestra <ventana> con <informacion nutricional> 
Y <beneficios> de alimentos no registrados.

Examples: Datos de entrada
    |Interrogante|
    |True|
Examples: Datos de salida
    |ventana|informacion nutricional|beneficios|
    |La sugerencia del dia es: apio |8 Cal|Reduccion del colesterol|
