# Linux - Bash
## Guia téorica y práctica sobre Linux y scripting con Bash
### Sistemas Operativos

Última revisión Agosto 2023

#
# Contenido
- [Entorno de trabajo](#entorno-de-trabajo)
- [Introducción a Lunix](#introducción-a-lunix)
  - [Distribuciones](#distribuciones)
  - [Estructura de archivos](#estructura-de-archivos)
  - [Permisos](#permisos)
  - [Redirecciones de entrada/salida](#redirecciones-de-entradasalida)
  - [Directorios y archivos](#directorios-y-archivos)

#
# Entorno de trabajo
Todo el desarrollo de las clases, ejemplos y corrección de ejercicios se realizará sobre Ubuntu 22.04 LTS, el cual estará montando sobre WSL de windows.
Para conocer más sobre esta herramienta y como configurar su ambiente local, le recomendamos los siguientes links:
  - [Instalación de Linux en Windows con WSL](https://learn.microsoft.com/es-mx/windows/wsl/install)
  - [Install Ubuntu on WSL2 on Windows 10](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview)

#
# Introducción a Lunix
Linux es un sistema operativo de código abierto y gratuito que se utiliza en computadoras y otros dispositivos. Fue creado por Linus Torvalds en 1991 y se basa en el núcleo de Linux, que es la parte central del sistema. Aunque el núcleo es esencial, para usar Linux en una computadora se necesita también un conjunto de programas y herramientas, conocido como distribución de Linux.

Linux es conocido por su estabilidad, seguridad y flexibilidad. Es ampliamente utilizado en servidores, supercomputadoras, dispositivos móviles y otros tipos de dispositivos. Además, existen muchas distribuciones de Linux, como Ubuntu, Fedora, Debian y CentOS, que ofrecen diferentes enfoques y características para adaptarse a diferentes necesidades y preferencias de los usuarios.

Linux tiene una estrecha relación con el proyecto [GNU](https://www.gnu.org/home.es.html) (GNU's Not Unix), que es un esfuerzo para crear un sistema operativo libre y de código abierto. Aunque GNU desarrolló muchas de las herramientas y programas necesarios para un sistema operativo, como editores de texto, compiladores y utilidades, le faltaba un componente clave: el núcleo del sistema operativo.

Es aquí donde entra Linux. A principios de la década de 1990, Linus Torvalds desarrolló el núcleo de Linux y lo lanzó bajo una licencia de código abierto. Este núcleo era esencial para el funcionamiento de un sistema operativo completo. Mientras tanto, las herramientas y programas desarrollados por el proyecto GNU podían combinarse con el núcleo de Linux para crear un sistema operativo funcional.

Esta combinación del núcleo de Linux y las herramientas de GNU dio lugar a lo que a menudo se conoce como "GNU/Linux" o simplemente "Linux". Aunque el sistema operativo es una combinación de componentes de GNU y el núcleo de Linux, la confusión a menudo radica en el hecho de que el término "Linux" se usa a veces para referirse a todo el sistema operativo, incluso cuando debería incluir la referencia a GNU.

En resumen, la relación entre GNU y Linux radica en que el núcleo de Linux complementó el trabajo realizado por el proyecto GNU, dando como resultado un sistema operativo completo y funcional que combina las herramientas de GNU con el núcleo de Linux.

## Distribuciones
Como ya mencionamos, Linux y el proyecto GNU, están basados en open source, por lo que es posible encontrar muchas versiones o variantes diferentes, que son conocidas como **Distribuciones** o **distros**. Aunque el núcleo del sistema operativo (el kernel de Linux) es el mismo en todas las distribuciones, las distribuciones varían en términos de configuración, conjunto de programas preinstalados, objetivos y enfoques. Cada distribución está diseñada para satisfacer diferentes necesidades y preferencias de los usuarios.

Cada distribución de Linux puede ofrecer:

1. **Entorno de Escritorio:** Cada distribución puede optar por utilizar diferentes entornos de escritorio, como GNOME, KDE, XFCE, LXDE, etc. Estos entornos proporcionan la interfaz gráfica para los usuarios.

2. **Herramientas y Aplicaciones:** Las distribuciones pueden incluir diferentes conjuntos de programas y aplicaciones preinstaladas, que pueden ser adecuados para diversos usos, como desarrollo, diseño, oficina, entretenimiento, etc.

3. **Sistemas de Empaquetado:** Las distribuciones utilizan diferentes sistemas de empaquetado y gestión de software. Algunas usan sistemas de paquetes como RPM (Red Hat Package Manager) o DEB (Debian Package) para gestionar la instalación y actualización de software.

4. **Objetivos Específicos:** Algunas distribuciones están diseñadas para ser utilizadas en servidores, mientras que otras se centran en la facilidad de uso para los usuarios finales. Otras pueden estar orientadas hacia la seguridad, la educación o incluso la recuperación de datos.

5. **Comunidad y Soporte:** Cada distribución tiene su propia comunidad de usuarios, foros de soporte y recursos en línea. Algunas distribuciones tienen un gran respaldo de la comunidad y ofrecen amplio soporte, mientras que otras pueden ser más especializadas y contar con una comunidad más pequeña.

Ejemplos de distribuciones de Linux incluyen Ubuntu, Fedora, Debian, CentOS, Arch Linux, openSUSE, Linux Mint, y muchas más. La elección de una distribución depende de las necesidades, preferencias y nivel de experiencia del usuario. Cada distribución tiene su propia filosofía y enfoque, lo que significa que hay opciones para una amplia variedad de casos de uso y requisitos.

## Estructura de archivos

Una de los principales diferencias con las que un usuario de Windows se encuentra es la forma en que los archivos están organizados en el File System. El sistema de archivos en Linux sigue una estructura jerárquica similar a un árbol. En esta estructura, todo se organiza a partir de un directorio raíz, representado por una barra ("/"), a diferencia de Windows, donde la organización y visualización de los archivos y directorios sigue una estructura de unidades, que representan las particiones lógicas definidas en el o los discos montados al sistema operativo.

Si bien en la estructura de archivos de Linux vemos archivos y directorios, bajo el entorno de Linux, todo es un archivo que tiene diferentes atributos y existen muchos tipos de archivos diferentes (archivos de texto, binarios, directios, links, fifos, etc). 

A continuación mencionaremos algunos de los conceptos básicos y fundamentales sobre cómo funciona el sistema de archivos en Linux:

  - **Directorios y Archivos:** En Linux, todo es un archivo, incluso los directorios. Los archivos pueden contener datos o programas ejecutables, y los directorios son utilizados para organizar y contener otros archivos y subdirectorios.

  - **Rutas:** Las rutas se utilizan para especificar la ubicación de un archivo o directorio en el sistema de archivos. Hay dos tipos de rutas: rutas absolutas y rutas relativas. Las rutas absolutas comienzan desde el directorio raíz, mientras que las rutas relativas se basan en la ubicación actual.

  - **Permisos:** Linux utiliza un sistema de permisos para controlar quién puede acceder, leer, escribir o ejecutar archivos y directorios. Cada archivo y directorio tiene propietarios y grupos asociados, y se pueden asignar permisos específicos a usuarios y grupos.

  - **Estructura de Directorios:** El sistema de archivos de Linux sigue una estructura organizada en directorios. Algunos directorios importantes incluyen:
  - 
    - /bin: Contiene archivos binarios esenciales (comandos) para el sistema.
    - /etc: Almacena archivos de configuración del sistema.
    - /home: Directorios de usuario personal, donde cada usuario puede almacenar sus archivos.
    - /var: Datos variables, como registros y archivos temporales.
    - /tmp: Archivos temporales.
    - /usr: Programas y archivos relacionados con usuarios.
    - /lib y /lib64: Bibliotecas compartidas utilizadas por programas.
    - /dev: Archivos de dispositivo que representan dispositivos del sistema.
    - /proc: Información sobre procesos y sistema en tiempo de ejecución.
    - /mnt y /media: Puntos de montaje para dispositivos externos.
      
  - **Montaje:** En Linux, los dispositivos de almacenamiento, como discos duros y unidades USB, se deben "montar" en el sistema de archivos antes de poder acceder a ellos. Esto significa que se integran en la jerarquía de directorios existente.

## Permisos
En Linux, el manejo de permisos es fundamental para controlar quién puede acceder, leer, escribir o ejecutar archivos y directorios. Los permisos se asignan a tres categorías de usuarios: el propietario del archivo, el grupo al que pertenece el archivo y los demás usuarios. Aquí hay un resumen de cómo funcionan los permisos en Linux:

  - **Tipos de Permisos**
    - Lectura `(r)`: Permite ver el contenido de un archivo o ver la lista de archivos en un directorio.
    - Escritura `(w)`: Permite modificar o eliminar un archivo, así como crear, renombrar o eliminar archivos en un directorio.
    - Ejecución `(x)`: Permite ejecutar un archivo (si es un programa o script) o ingresar a un directorio.

  - **Categorías de Usuarios**
    - Propietario `(u)`: El usuario que creó el archivo o directorio.
    - Grupo `(g)`: Los usuarios que pertenecen al mismo grupo que el propietario.
    - Otros `(o)`: Todos los demás usuarios que no son el propietario ni están en el grupo.

  - **Modos de Permisos**
  Los permisos se pueden establecer mediante combinaciones de letras y símbolos. Aquí tienes ejemplos:
    - `rwx`: Lectura, escritura y ejecución.
    - `rw-`: Lectura y escritura, pero sin ejecución.
    - `r--`: Solo lectura.
    - `--x`: Solo ejecución.

  - **Cambiar Permisos**
  Para cambiar los permisos de un archivo o directorio, se utiliza el comando `chmod` (change mode). Por ejemplo, chmod u+w archivo agrega permisos de escritura al propietario.

  - **Cambiar Propietario y Grupo**
  Puedes cambiar el propietario y el grupo de un archivo o directorio con los comandos `chown` y `chgrp`, respectivamente.

  - **Herencia de Permisos**
  Cuando se crea un archivo o directorio dentro de otro, generalmente hereda algunos de los permisos del directorio padre.

  ## Redirecciones de entrada/salida
  Como mencionamos anteriormente, todo es un archivo en Linux. De la misma manera, podemos decir que todo lo que ejecutemos generará como resultado texto, el cual será enviado a los flujos STDOUT o STDERR y de igual manera, el contenido que ingresemos será canalizado por STDIN. Basandonos en este concepto básico del entorno podemos utilizar la herramienta de redireccionamiento que nos permite manipular la entrada y salida estándar de los procesos en la línea de comandos. Esto permite realizar tareas como redirigir la salida de un comando a un archivo, combinar la salida de múltiples comandos o proporcionar datos de un archivo como entrada a un comando. Esta tarea la podemos realizar con los operadores de redireccionamiento:

  - **Redireccionamiento de Salida `>`**
  El operador `>` se utiliza para redirigir la salida estándar de un comando a un archivo. Si el archivo ya existe, su contenido se sobrescribirá. Si el archivo no existe, se creará.
  
  Ejemplo: `ls > listado.txt` ejecutará el comando ls y guardará su salida en un archivo llamado listado.txt.

  - **Redireccionamiento de Salida de Concatenación `>>`**
  El operador `>>` se utiliza para redirigir la salida estándar de un comando y agregarla al final de un archivo existente en lugar de sobrescribirlo.

  Ejemplo: `echo "nuevo contenido" >> archivo.txt` agrega "nuevo contenido" al final de archivo.txt.

  - **Redireccionamiento de Entrada `<`**
  El operador `<` se utiliza para proporcionar datos de un archivo como entrada estándar a un comando en lugar de usar la entrada del teclado.

  Ejemplo: `sort < datos.txt` ordenará las líneas del archivo datos.txt.

  - **Redireccionamiento de Entrada y Salida de Error `2>` y `2>>`**
  Los operadores `2>` y `2>>` se utilizan para redirigir la salida de error estándar (stderr) de un comando a un archivo.

  Ejemplo: `comando_inexistente 2> error.txt` capturará los mensajes de error del comando inexistente y los guardará en error.txt.

  - **Tuberías `|`**
  Las tuberías se utilizan para redirigir la salida de un comando como entrada al siguiente comando. Esto permite encadenar múltiples comandos juntos.

  Ejemplo: `ls | grep archivo | head` listará los archivos en un directorio y luego pasará la lista a grep para buscar "archivo" y finalmente ese resultado será enviado a head para mostrar los primeros 10 resultados.

## Comandos básicos
Linux nos provee de muchos comandos para realizar las tareas que el usuario necesita, como así también poder configurar el sistema. Algunos de los comandos básicos que utilizaremos durante esta guía y en la cursada de la materia son los siguientes. Cabe aclarar que cada comando recibe una lista de parámetros para modificar su comportamiento y el formato de la salida que genera:

  1. **`ls`**: Lista los archivos y directorios en el directorio actual.
  2. **`cd`**: Cambia de directorio. Por ejemplo, `cd carpeta` te llevará a la carpeta llamada "carpeta".
  3. **`pwd`**: Muestra la ruta completa del directorio actual.
  4. **`mkdir`**: Crea un nuevo directorio. Por ejemplo, `mkdir nuevo_dir` creará un directorio llamado "nuevo_dir".
  5. **`touch`**: Crea un nuevo archivo en blanco. Por ejemplo, `touch archivo.txt` creará un archivo llamado "archivo.txt".
  6. **`cp`**: Copia archivos o directorios. Por ejemplo, `cp archivo.txt destino/` copiará "archivo.txt" al directorio "destino".
  7. **`mv`**: Mueve (o renombra) archivos o directorios. Por ejemplo, `mv archivo.txt nuevo_nombre.txt` renombrará "archivo.txt" como "nuevo_nombre.txt".
  8. **`rm`**: Elimina archivos o directorios. Ten cuidado, este comando es irreversible. Por ejemplo, `rm archivo.txt` eliminará "archivo.txt".
  9. **`cat`**: Concatena el contenido de archivos y muestra el resultado en la terminal. `cat *.txt` mostrara en pantalla la concatenación de todos los archivos con extensión `.txt` en el directorio donde se ejecutó el comando.
  10. **`echo`**: Muestra un mensaje en la terminal. Por ejemplo, `echo "Hola, mundo"` mostrará "Hola, mundo".
  11. **`man`**: Muestra el manual de un comando. Por ejemplo, `man ls` mostrará el manual del comando "ls".
  12. **`chmod`**: Cambia los permisos de un archivo o directorio.
  13. **`chown`**: Cambia el propietario de un archivo o directorio.
  14. **`ps`**: Muestra los procesos en ejecución.
  15. **`kill`**: Envía una señal a un proceso. Por ejemplo, `kill PID` detendrá el proceso con el ID de proceso "PID".
  16. **`df`**: Muestra información sobre el uso del espacio en disco.
  17. **`free`**: Muestra información sobre la memoria RAM y el intercambio.
  18. **`ifconfig` o `ip`**: Muestra información sobre la configuración de red.
  19. **`ping`**: Envía paquetes ICMP a una dirección para verificar la conectividad de red.
  20. **`wget`**: Descarga archivos desde la web. Por ejemplo, `wget URL` descargará el archivo desde la URL especificada.
  21. **`history`**: Mostrará un listado con el historial de los comandos ejecutados en la sesión del usuario actual.

### Ayuda
Todos los comandos standard tienen asociada una página en el manual de ayuda, al cual se puede acceder utilizando `man`. Dentro de la respuesta que obtenemos podremos encontrar información sobre qué hace cada comando, los parámetros que recibe, ejemplos de uso, información extra y enlaces relacionados, entre otras cosas.
El comando `man` no solo devuelve información sobre los comandos sino que también puede brindar detalles sobre funciones de bibliotecas en C o algun otro lenguaje que haya actualizado la base de ayuda.

Por ejemplo: `man 3 printf` 

Mostrará la página del manual que contiene detalles sobre la función `printf` de la biblioteca de C. Recuerda que el contenido específico y la disponibilidad de las páginas del manual pueden variar según la distribución de Linux que estés utilizando.

## Directorios y archivos
