Feature: Compartir progreso

   Como adulto promedio, quiero compartir mi progreso obtenido dentro de la app 
   con el público para tener una mayor motivación conmigo mismo.

Scenario: Adulto promedio no desee compartir el progreso obtenido con el público.

Dado que el adulto promedio se encuentra en el apartado
de Configuración de la aplicación.
Cuando el adulto promedio deshabilite <Compartir_Progreso>.
Entonces la aplicación no le muestra <No_Mostrar_Progreso_Usuario> en su perfil a ningún usuario de la app.

Examples: Datos de entrada
    | Compartir_Progreso| nombre de usuario |
    | False             | Juan287           |
Examples: Datos de salida
    | No_Mostrar_Progreso_Usuario      |
    | Juan287 tiene sus datos privados |


Scenario: Adulto promedio no desee compartir el progreso obtenido con el público.

Dado que el adulto promedio se encuentra en el apartado
de Configuración de la aplicación.
Cuando el adulto promedio deshabilite <compartir_Progreso>.
Entonces la aplicación no le muestra <No_Mostrar_Progreso_Usuario> en su perfil a ningún usuario de la app.

Examples: Datos de entrada
    | Compartir_Progreso                         | 
    | Opcion de configuracion compartir progreso | 

Examples: Datos de salida
    | No_Mostrar_Progreso_Usuario                       |                                      
    | Este <nombre de usuario> tiene los datos privados | 