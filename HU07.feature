Feature: Analisis de progresión alimenticia

    Como adulto promedio, quiero que la app cuente con una funcionalidad 
    que me permita ver mi progresión alimenticia para saber si estoy siguiendo 
    un proceso adecuado o estoy descuidando mi alimentación

Scenario: Adulto promedio quiere ver su progresión alimenticia

Dado que el adulto promedio se encuentra en el menú principal de la aplicación.
Cuando el adulto promedio dé click al botón <Mi Progresion Alimenticia>
Y seleccioné un ítem entre <opcion_1> o <opcion_2>
Entonces la aplicación le muestra el <grafico_calorias_consumidas>
Y el <mensaje_estado_alimenticio>.

Examples: Datos de entrada
    | opcion_1            | opcion_2           |
    | Frecuencia semanal  | Frecuencia diaria  | 

Examples: Datos de salida
    | gráfico_calorías_consumidas                     | mensaje_estado_alimenticio                                           |
    | Grafico interactivo de los alimentos ingeridos  | "Para obtener los detalles de su análisis alimenticio de click aqui" | 


Scenario: Adulto promedio desea restablecer su progresión alimenticia

Dado que el adulto promedio se encuentra en el menú principal de la aplicación
Cuando el adulto promedio dé clic al botón <Mi progresion Alimenticia>
Y dé clic al botón <Restablecer mi progresipn alimenticia>
Entonces la aplicación elimina los datos diarios de lo que ha consumido anteriormente el usuario 
Y la aplicación muestra el mensaje <Eliminacion_exitosa>. 

Examples: Datos de entrada
    | opcion_1                                | 
    | Reestablecer mi progresión alimenticia  | 

Examples: Datos de salida
    | Eliminación_exitosa                                                        |                                      
    | "La eliminación de la progresion alimenticia fue realizada correctamente"  | 