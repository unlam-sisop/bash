# Introducción
La presente guía, tiene como objetivo ayudarlo a comprender los temas vistos en clase y que se detallan en la documentación de la cátedra, junto a algunos extras.

## Usuarios
1. ¿Qué es la cuenta de súper usuario (root) y para qué se utiliza?
2. Ingresar al sistema como súper usuario (root), y realizar los siguientes pasos:
    1. `adduser <apellido>` (reemplazar <apellido> por el suyo).
    2. `passwd <apellido>` (Ingrese una contraseña (password) a su elección). 
    3. `logout`
3. Indique claramente qué efectuaron estos comandos, e indique qué archivo/s fueron modificados (Dentro del directorio `/etc`) TIP: Utilice lo siguiente: `ls -lt /etc | more`.
4. Luego ejecute `cat /etc/passwd | more` y haga lo mismo con los otros archivos que se modificaron. Analice y comente lo visto.
5. ¿En qué directorio se encuentran los comandos utilizados en los puntos 2.1, 2.2, 2.3, 3, y 4?

## Ayuda
`man` es un programa que formatea y muestra la páginas del manual. 

1. ¿Cómo puedo ver la información de un determinado comando?
2. ¿Cómo puedo buscar una palabra clave dentro de la página del manual?
3. ¿Cómo puedo salir?
4. ¿Cómo hago para buscar una palabra clave determinada en todas las páginas del manual?
5. ¿Qué es lo sucede al realizar lo siguiente?
    1. `man`
    2. `man cp`
    3. `man printf`
    4. `man 3 printf`
6. ¿Qué sucede al ejecutar `whereis cd`?
    1. ¿Qué es la información que se muestra por pantalla al ejecutar el punto anterior?
    2. ¿Qué ocurre si se ejecuta whereis * sobre un directorio? (Tip: si no pasa nada, intentelo nuevamente pero primero ejecute cd /bin)
    3. ¿Cuál es la diferencia entre whereis y find?
7. ¿Qué sucede al al ejecutar `whatis cd`? Si el resultado del punto anterios fue la leyenda `cd: nothing appopiate`, utilice el comando `/usr/sbin/makewhatis`, y responda los siguientes puntos:
    1. ¿Qué realizó la sentencia anterior?
    2. Cambie al directorio `/bin`, y ejecute el comando `whatis *` ¿Qué ocurrió?

## Teclado / Terminales
1. ¿Qué sucede si tecleo `cat /e <tab> p <tab>`? (donde tab es la tecla tabulación). Presione <tab> nuevamente ¿Qué pasó ahora?
2. ¿Qué sucede si tecleo `cat /e <tab> pas <tab>`?
3. Ejecute el comando `who`, ¿cuál fue el resultado?
4. Ejecute el comando `who am i` ¿qué muestra?, ¿Qué diferencias tiene con el comando ejecutado en el punto anterior?

## Directorios
1. ¿Para qué se usa el comando `cd`?. Ejecute las siguientes variantes de `cd` e indique cuál fue el resultado obtenido:
    1. `cd /`
    2. `cd`
    3. `cd -`
    4. `cd /etc`
    5. `cd..`
    6. `cd ..`
    7. `cd ~/`

2. ¿Cuál/es son las diferencias entre el path absoluto y el path relativo?
3. ¿Qué es lo que realizan las siguientes operaciones? (tip: si no encuentra la diferencia primero haga `cd /`, y luego vuelva a intentar).
    1. `cd ~`
    2. `cd -`
    3. ¿Cuál es la diferencia entre `cd ..` y `cd -`?
4. Operaciones con directorios:
    1. ¿Con qué comando se puede crear un directorio?.
    2. ¿Con qué comando se puede borrar un directorio?.
    3. ¿Qué sucede sí el directorio no está vacío?.
    4. ¿Cómo puedo salvar la situación anterior? (Sin borrar uno a uno los archivos existentes).
    5. ¿Qué significa la expresión `./` cuando se utiliza delante de un archivo? ¿Para que sirve?
    6. ¿Cómo puede moverse entre directorios sin utilizar el PATH completo?
    7. ¿Cuál es el contenido de los siguientes directorios que confirman la estructura de cualquier sistema operativo GNU/Linux:?
        1. /boot
        2. /dev
        3. /bin
        4. /etc
        5. /usr
        6. /sbin
        7. /root
        8. /etc/rc.d (y todos los que están adentro)
        9. /proc
        10. /mnt
        11. /usr/bin
        12. /usr/sbin
        13. /var
        14. /tmp

## Archivos
1. ¿Qué hacen los siguientes comandos?
    1. cp
    2. mv
    3. rm
    4. rcp
    5. rsh
    6. scp
    7. ssh
2. ¿Con qué comando puedo concatenar el contenido de dos archivos?.
3. Ejecute `ls -l /tmp`
    1. ¿Qué significa el primer carácter?
    2. ¿Cuáles son todos los posibles valores que puede contener ese campo y que significa cada uno?
4. ¿Para qué sirve el comando touch? ¿qué utilidad le encuentra?

## Permisos
1. Teniendo en cuenta el `ls -l` del punto 5.3, ¿indique que son los siguientes 9 caracteres? (sin considerar el primero sobre el que ya respondió anteriormente)
2. ¿qué significan cada caracter? ¿cómo están agrupados?
3. ¿Cómo se asignan los permisos? (detalle los comandos).
4. ¿Qué son el owner, y el group de un archivo?. ¿Se pueden cambiar?.
5. Intente cambiar los permisos de un archivo perteneciente al root (sesionado como usuario). Explique qué sucedió.
6. Explique la forma de cambiar los permisos con valores en octal.
7. ¿Cuál es el significado de los permisos en los directorios (se debe indicar que indica una r, una w, y una x)?

## Filtros
1. ¿Cuál es la diferencia de los comandos `more`, `less` y `cat`?. De un ejemplo de cada uno.
2. ¿Cuál es la diferencia entre `tail` y `head`?.
3. ¿Para qué sirve el comando `wc` y que indican los parámetros `-c -l -w`? ¿Proponga ejemplos de uso?
4. ¿Qué es lo que realiza el comando `uniq`?
5. ¿Qué es lo que realiza el comando grep?
    1. ¿Qué hacen las siguientes líneas de comando?
        1. `grep root /etc/passwd`
        2. `grep r /etc/passwd`
        3. `grep ^r /etc/passwd`
        4. `grep r$ /etc/passwd`

## Variables de entorno
1. ¿Qué son las variables de entorno y para qué sirven?.
2. Escriba el contenido y explique el significado de las siguientes variables:
    1. HOME
    2. LOGNAME
    3. PATH
    4. HOSTNAME
    5. IFS
3. ¿Qué comando usó para ver el contenido de las variables del punto anterior?
4. Cree una variable de entorno HOLA que contenga el mensaje "Hola mundo".
5. ¿Cuál es el uso que le da el sistema a la variable PATH? ¿Qué ocurres si intenta ejecutar un comando que no se encuentra ubicado en alguno de los directorios que contiene la variable? ¿Cómo lo soluciona?
