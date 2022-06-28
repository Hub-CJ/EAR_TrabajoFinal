Feature: Recomendar aplicación  

    Como adulto promedio, quiero que la app cuente con un sistema de referidos 
    para impulsar a mis amigos y conocidos a llevar una vida más sana.

Scenario: Adulto promedio realiza satisfactoriamente la consulta de qué personas se unieron a la aplicación gracias a su invitación.

Dado que el adulto promedio se encuentra en la sección "Listar mis referidos" <open_list>.
Cuando el adulto promedio dé clic al botón <opcion_mostrar_preferidos>.
Entonces la aplicación muestra una lista de todas las personas que se unieron en la app con tu link de invitación
<show_preferences>. 

Examples: Datos de entrada
    | open_list                                                                     | opcion_mostrar_preferidos                                      |
    | Opción que permite abrir una ventana para insertar una nueva lista de amigos  | Muestra la lista de los amigos añadido si es que este los tiene|

Examples: Datos de salida
    | show_preferences                                                  |                                      
    | Ventana emergente que muestra las personas preferidas del usuario | 


Scenario: Adulto promedio no logra realizar satisfactoriamente la consulta de qué personas se unieron a la aplicación gracias a su invitación puesto que sus amigos decidieron no unirse.

Dado que el adulto promedio se encuentra en la sección Listar mis referidos <open_list> .
Cuando el adulto promedio dé clic al botón Mostrar todos mis referidos. <opcion_mostrar_preferidos>.
Entonces la aplicación muestra el <rejection message>

Examples: Datos de entrada
    | open_list                                                                     | opcion_mostrar_preferidos                                                              |
    | Opción que permite abrir una ventana para insertar una nueva lista de amigos  | Abrir la lista de amigos si es que esta no está vacía, sino mostrar <rejection message>|

Examples: Datos de salida
    | rejection message                                                                      |                                      
    | Muestra un mensaje hacia el usuario que hace referencia a que no tiene amigos añadidos | 