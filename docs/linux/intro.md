#
# Contenido
  - [Introducción a Linux](#introducción-a-linux)
  - [Distribuciones](#distribuciones)
  - [Estructura de archivos](#estructura-de-archivos)
  - [Permisos](#permisos)
  - [Directorios y archivos](#directorios-y-archivos)
  - [Manejo de archivos](#manejo-de-archivos)
  - [Variables de entorno](#variables-de-entorno)
  - [Redireccionamiento de entrada/salida](#redireccionamiento-de-entradasalida)
  - [Procesos](#procesos)
  - [Daemons](#daemons)

#
## Introducción a Linux
Linux es un sistema operativo de código abierto y gratuito que se utiliza en computadoras y otros dispositivos. Fue creado por Linus Torvalds en 1991 y se basa en el núcleo de Linux, que es la parte central del sistema. Aunque el núcleo es esencial, para usar Linux en una computadora se necesita también un conjunto de programas y herramientas, conocido como distribución de Linux.

Linux es conocido por su estabilidad, seguridad y flexibilidad. Es ampliamente utilizado en servidores, supercomputadoras, dispositivos móviles y otros tipos de dispositivos. Además, existen muchas distribuciones de Linux, como Ubuntu, Fedora, Debian y CentOS, que ofrecen diferentes enfoques y características para adaptarse a diferentes necesidades y preferencias de los usuarios.

Linux tiene una estrecha relación con el proyecto [GNU](https://www.gnu.org/home.es.html) (GNU's Not Unix), que es un esfuerzo para crear un sistema operativo libre y de código abierto. Aunque GNU desarrolló muchas de las herramientas y programas necesarios para un sistema operativo, como editores de texto, compiladores y utilidades, le faltaba un componente clave: el núcleo del sistema operativo.

Es aquí donde entra Linux. A principios de la década de 1990, Linus Torvalds desarrolló el núcleo de Linux y lo lanzó bajo una licencia de código abierto. Este núcleo era esencial para el funcionamiento de un sistema operativo completo. Mientras tanto, las herramientas y programas desarrollados por el proyecto GNU podían combinarse con el núcleo de Linux para crear un sistema operativo funcional.

Esta combinación del núcleo de Linux y las herramientas de GNU dio lugar a lo que a menudo se conoce como "GNU/Linux" o simplemente "Linux". Aunque el sistema operativo es una combinación de componentes de GNU y el núcleo de Linux, la confusión a menudo radica en el hecho de que el término "Linux" se usa a veces para referirse a todo el sistema operativo, incluso cuando debería incluir la referencia a GNU.

En resumen, la relación entre GNU y Linux radica en que el núcleo de Linux complementó el trabajo realizado por el proyecto GNU, dando como resultado un sistema operativo completo y funcional que combina las herramientas de GNU con el núcleo de Linux.

## Distribuciones
Como ya mencionamos, Linux y el proyecto GNU, están basados en open source, por lo que es posible encontrar muchas versiones o variantes diferentes, que son conocidas como Distribuciones o distros. Aunque el núcleo del sistema operativo (el kernel de Linux) es el mismo en todas las distribuciones, las distribuciones varían en términos de configuración, conjunto de programas preinstalados, objetivos y enfoques. Cada distribución está diseñada para satisfacer diferentes necesidades y preferencias de los usuarios.

Cada distribución de Linux puede ofrecer:

1. Entorno de Escritorio: Cada distribución puede optar por utilizar diferentes entornos de escritorio, como GNOME, KDE, XFCE, LXDE, etc. Estos entornos proporcionan la interfaz gráfica para los usuarios.

2. Herramientas y Aplicaciones: Las distribuciones pueden incluir diferentes conjuntos de programas y aplicaciones preinstaladas, que pueden ser adecuados para diversos usos, como desarrollo, diseño, oficina, entretenimiento, etc.

3. Sistemas de Empaquetado: Las distribuciones utilizan diferentes sistemas de empaquetado y gestión de software. Algunas usan sistemas de paquetes como RPM (Red Hat Package Manager) o DEB (Debian Package) para gestionar la instalación y actualización de software.

4. Objetivos Específicos: Algunas distribuciones están diseñadas para ser utilizadas en servidores, mientras que otras se centran en la facilidad de uso para los usuarios finales. Otras pueden estar orientadas hacia la seguridad, la educación o incluso la recuperación de datos.

5. Comunidad y Soporte: Cada distribución tiene su propia comunidad de usuarios, foros de soporte y recursos en línea. Algunas distribuciones tienen un gran respaldo de la comunidad y ofrecen amplio soporte, mientras que otras pueden ser más especializadas y contar con una comunidad más pequeña.

Ejemplos de distribuciones de Linux incluyen Ubuntu, Fedora, Debian, CentOS, Arch Linux, openSUSE, Linux Mint, y muchas más. La elección de una distribución depende de las necesidades, preferencias y nivel de experiencia del usuario. Cada distribución tiene su propia filosofía y enfoque, lo que significa que hay opciones para una amplia variedad de casos de uso y requisitos.

## Estructura de archivos

Una de los principales diferencias con las que un usuario de Windows se encuentra es la forma en que los archivos están organizados en el File System. El sistema de archivos en Linux sigue una estructura jerárquica similar a un árbol. En esta estructura, todo se organiza a partir de un directorio raíz, representado por una barra ("/"), a diferencia de Windows, donde la organización y visualización de los archivos y directorios sigue una estructura de unidades, que representan las particiones lógicas definidas en el o los discos montados al sistema operativo.

Si bien en la estructura de archivos de Linux vemos archivos y directorios, bajo el entorno de Linux, todo es un archivo que tiene diferentes atributos y existen muchos tipos de archivos diferentes (archivos de texto, binarios, directios, links, fifos, etc). 

A continuación mencionaremos algunos de los conceptos básicos y fundamentales sobre cómo funciona el sistema de archivos en Linux:

  - Directorios y Archivos: En Linux, todo es un archivo, incluso los directorios. Los archivos pueden contener datos o programas ejecutables, y los directorios son utilizados para organizar y contener otros archivos y subdirectorios.

  - Rutas: Las rutas se utilizan para especificar la ubicación de un archivo o directorio en el sistema de archivos. Hay dos tipos de rutas: rutas absolutas y rutas relativas. Las rutas absolutas comienzan desde el directorio raíz, mientras que las rutas relativas se basan en la ubicación actual.

  - Permisos: Linux utiliza un sistema de permisos para controlar quién puede acceder, leer, escribir o ejecutar archivos y directorios. Cada archivo y directorio tiene propietarios y grupos asociados, y se pueden asignar permisos específicos a usuarios y grupos.

  - Estructura de Directorios: El sistema de archivos de Linux sigue una estructura organizada en directorios. Algunos directorios importantes incluyen:
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
      
  - Montaje: En Linux, los dispositivos de almacenamiento, como discos duros y unidades USB, se deben "montar" en el sistema de archivos antes de poder acceder a ellos. Esto significa que se integran en la jerarquía de directorios existente.

## Permisos
En Linux, el manejo de permisos es fundamental para controlar quién puede acceder, leer, escribir o ejecutar archivos y directorios. Los permisos se asignan a tres categorías de usuarios: el propietario del archivo, el grupo al que pertenece el archivo y los demás usuarios. Aquí hay un resumen de cómo funcionan los permisos en Linux:

  - Tipos de Permisos
    - Lectura `(r)`: Permite ver el contenido de un archivo o ver la lista de archivos en un directorio.
    - Escritura `(w)`: Permite modificar o eliminar un archivo, así como crear, renombrar o eliminar archivos en un directorio.
    - Ejecución `(x)`: Permite ejecutar un archivo (si es un programa o script) o ingresar a un directorio.

  - Categorías de Usuarios
    - Propietario `(u)`: El usuario que creó el archivo o directorio.
    - Grupo `(g)`: Los usuarios que pertenecen al mismo grupo que el propietario.
    - Otros `(o)`: Todos los demás usuarios que no son el propietario ni están en el grupo.

  - Modos de Permisos
  Los permisos se pueden establecer mediante combinaciones de letras y símbolos. Aquí tienes ejemplos:
    - `rwx`: Lectura, escritura y ejecución.
    - `rw-`: Lectura y escritura, pero sin ejecución.
    - `r--`: Solo lectura.
    - `--x`: Solo ejecución.

  - Cambiar Permisos
  Para cambiar los permisos de un archivo o directorio, se utiliza el comando `chmod` (change mode). Por ejemplo, chmod u+w archivo agrega permisos de escritura al propietario.

  - Cambiar Propietario y Grupo
  Puedes cambiar el propietario y el grupo de un archivo o directorio con los comandos `chown` y `chgrp`, respectivamente.

  - Herencia de Permisos
  Cuando se crea un archivo o directorio dentro de otro, generalmente hereda algunos de los permisos del directorio padre.

## Comandos básicos
Linux nos provee de muchos comandos para realizar las tareas que el usuario necesita, como así también poder configurar el sistema. Algunos de los comandos básicos que utilizaremos durante esta guía y en la cursada de la materia son los siguientes. Cabe aclarar que cada comando recibe una lista de parámetros para modificar su comportamiento y el formato de la salida que genera:

  1. `ls`: Lista los archivos y directorios en el directorio actual.
  2. `cd`: Cambia de directorio. Por ejemplo, `cd carpeta` te llevará a la carpeta llamada "carpeta".
  3. `pwd`: Muestra la ruta completa del directorio actual.
  4. `mkdir`: Crea un nuevo directorio. Por ejemplo, `mkdir nuevo_dir` creará un directorio llamado "nuevo_dir".
  5. `touch`: Crea un nuevo archivo en blanco. Por ejemplo, `touch archivo.txt` creará un archivo llamado "archivo.txt".
  6. `cp`: Copia archivos o directorios. Por ejemplo, `cp archivo.txt destino/` copiará "archivo.txt" al directorio "destino".
  7. `mv`: Mueve (o renombra) archivos o directorios. Por ejemplo, `mv archivo.txt nuevo_nombre.txt` renombrará "archivo.txt" como "nuevo_nombre.txt".
  8. `rm`: Elimina archivos o directorios. Ten cuidado, este comando es irreversible. Por ejemplo, `rm archivo.txt` eliminará "archivo.txt".
  9. `cat`: Concatena el contenido de archivos y muestra el resultado en la terminal. `cat *.txt` mostrara en pantalla la concatenación de todos los archivos con extensión `.txt` en el directorio donde se ejecutó el comando.
  10. `echo`: Muestra un mensaje en la terminal. Por ejemplo, `echo "Hola, mundo"` mostrará "Hola, mundo".
  11. `man`: Muestra el manual de un comando. Por ejemplo, `man ls` mostrará el manual del comando "ls".
  12. `chmod`: Cambia los permisos de un archivo o directorio.
  13. `chown`: Cambia el propietario de un archivo o directorio.
  14. `ps`: Muestra los procesos en ejecución.
  15. `kill`: Envía una señal a un proceso. Por ejemplo, `kill PID` detendrá el proceso con el ID de proceso "PID".
  16. `df`: Muestra información sobre el uso del espacio en disco.
  17. `free`: Muestra información sobre la memoria RAM y el intercambio.
  18. `ifconfig` o `ip`: Muestra información sobre la configuración de red.
  19. `ping`: Envía paquetes ICMP a una dirección para verificar la conectividad de red.
  20. `wget`: Descarga archivos desde la web. Por ejemplo, `wget URL` descargará el archivo desde la URL especificada.
  21. `history`: Mostrará un listado con el historial de los comandos ejecutados en la sesión del usuario actual.

### Ayuda
Todos los comandos standard tienen asociada una página en el manual de ayuda, al cual se puede acceder utilizando `man`. Dentro de la respuesta que obtenemos podremos encontrar información sobre qué hace cada comando, los parámetros que recibe, ejemplos de uso, información extra y enlaces relacionados, entre otras cosas.
El comando `man` no solo devuelve información sobre los comandos sino que también puede brindar detalles sobre funciones de bibliotecas en C o algun otro lenguaje que haya actualizado la base de ayuda.

```bash
man 3 printf
``` 

Mostrará la página del manual que contiene detalles sobre la función `printf` de la biblioteca de C. Recuerda que el contenido específico y la disponibilidad de las páginas del manual pueden variar según la distribución de Linux que estés utilizando.

## Directorios y archivos
Al iniciar sesión, el directorio en el que nos encontramos es el directorio `HOME`, el cual tiene el mismo nombre que su usuario y usualmente se encuentra en `/home/{user_name}`, que es donde se almacenan los archivos del usuario.

### Listado de directorios y archivos
El primer comando que veremos es `ls` (list), con el cual podemos listar el contenido del directorio actual. Para poder ver la información extra de los archivos, `ls -l` nos mostrará información sobre los permisos, fechas de creación y actualización, tamaño del archivo.

### Creación de directorios
Para crear un nuevo subdirectorio podemos utilizar el comando `mkdir` (make directory), por ejemplo: `mkdir subdirectorio` creará un nuevo directorio llamado `subdirectorio` en el directorio actual.

### Cambio de directorio
Para movernos entre directorios utilizaremos el comando `cd` (change directory). `cd subdirectorio`, hará que el directorio actual pase a ser `subdirectorio`. 

### Directorios `.` y `..`
Estando en este nuevo directorio podemos ejecutar `ls -a` y obtendremos como resultado un listado con 2 directorios "especiales", `.` y `..`. 

  - `.` representa al directorio actual y es de mucha utiliz para moverse entre directorios y también lo utilizaremos para ejecutar los scripts que desarrollaremos, por ejemplo: `./script.sh`.

  - `..` representa al directorio padre del directorio actual. `cd ..`, nos permitirá volver al directorio padre. `cd ../otro_dir`, nos permitirá cambiar al directorio `otro_dir` que está a la misma altura que `subdirectorio`.

Tanto `.` como `..`, nos permitirá hacer uso de lo que se llaman "rutas relativas". En su contraste, las "rutas absolutas", son la representación completa de toda, por ejemplo: `/home/unlam-sisop/documentos/linux/intro.txt` es la ruta completa del archivo intro.txt. Estando en el directorio `HOME` (`/home/unlam-sisop/`), podemos acceder al contenido de `intro.txt`, haciendo uso de su "ruta relativa" `cat ./documentos/linux/intro.txt` o con su "ruta absoluta" `cat /home/unlam-sisop/documentos/linux/intro.txt`. Estando en el directorio `/home/unlam-sisop/documentos/extra` podemos acceder al mismo archivo haciendo uso de la ruta relativa `cat ../linux/intro.txt`.

Relacionado a las rutas relativas, podemos utilizar `~` que hace referencia al directorio `HOME` del usuario, de esta forma, `ls ~` mostrará el contenido del directorio `HOME` y `ls ~/..` mostrará el contenido del directorio padre del directorio HOME del usuario.

### Resumen

|              |                                           |
|--------------|-------------------------------------------|
| ls           | lista archivos y directorios              |
| ls -a        | lista todos los archivos y directorios    |
| mkdir {dir}  | crea un nuevo directorio                  |
| cd {dir}     | cambia el directorio actual por {dir}     |
| cd           | cambia el directorio actual por `HOME`    |
| cd ~         | cambia el directorio actual por `HOME`    |
| cd ..        | cambia el directorio actual por el padre  |
| cd -         | cambia el directorio actual el anterior   |
| pwd          | muestra la ruta del directorio actual     |

## Manejo de archivos

### Copiar archivos
El comando `cp` (copy), es quien nos permite realizar la acción de copiar un archivo de un lugar a otro. Por ejemplo: `cp {file1} {file2}` es la forma en que podremos copiar el archivo {file1} en {file2}, siendo {file1} como {file2} rutas relativas o absulutas de los archivos, como vimos anteriormente.

### Mover archivos
El comando `mv` (move), nos permitira mover uno o varios archivos. En el caso que estemos moviendo un archivo en el mismo directorio, esta acción lo que hará es renombrar el archivo, por ejemplo:  

#### Ejemplos de uso:
  -  `mv file1 dir1/` moverá el archivo {file1} al subdirectorio {dir1/}, que es equivalente a `mv file1 ./dir1/`.
  -  `mv file1 file2 file3 dir1/` moverá los archivos {file1}, {file2} y {file3} al subdirectorio {dir1/}.
  - `mv {file1} {file2}` realizará el movimiento de {file1} a {file2} y siendo que ambos se encuentran en el mismo directorio, simplemente estaremos renombrandolo.
  - `mv {dir1/} {dir2/}` con esto estaremos renombrando el directorio {dir1/} por {dir2/}.

### Eliminar archivos y directorios
Para eliminar o borrar archivos y directorios, utilizaremos el comando `rm` y `rmdir`, respectivamente. También podremos hacer uso de parámetro `-r` de `rm` para simular el comportamiento de `rmdir`, ya que estaremos indicando que elimine de forma recursiva todo el contenido del directorio.

#### Ejemplos de uso:
  - `rm file1` elimina el archivo {file1}.
  - `rmdir dir1/` elimina el directorio {dir1/}.
  - `rm -r dir1/` elimina de forma recursiva todos los archivos del directorio {dir1/} , incluyendo al directorio {dir1/}. Es equivalente a `rmdir dir1/`.

### Mostrar el contenido de los archivos
Antes de hablar sobre algunas de las opciones que tenemos para mostrar el contenido de los archivos, es necesario mencionar al comando `clear` (clear screen), el cual nos permitira limpiar el contenido de la terminal, para poder visualizar de forma clara el resultado de los comandos.

Para poder visualizar el contenido de un archivo tenemos varias alternativas y algunas de ellas son:

#### `cat` (concatenate)
El proposito de cat es concatenar el contenido de varios archivos y generar una única salida con todo ese contenido, por lo cual, si solo indicamos un archivo como parámetro, veremos el contenido completo del archivo.

  - `cat {file1}`, mostrará el contenido de {file1}
  - `cat {file1} {file2} {file3}`, mostrará el contenido de {file1} concatenado con el contenido de {file2} y {file3}.

#### `less` y `more` (paginado)
Tanto `less` como `more` nos permitiran ver el contenido del archivo de forma paginada, lo que significa que veremos el contenido que cabe en la pantalla y luego iremos avanzando a la siguiente página, hasta llegar al final del archivo.

#### `head` y `tail` (recortes)
Tanto `head` como `tail` nos permitiran ver las prímeras y últimas líneas de un archivo, respectivamente. Ambos comandos permiten definir la cantidad de líneas a mostrar, pero por defecto generalmente muestran 10 líneas.

#### `grep` (búsqueda)
El comando grep es una herramienta poderosa para buscar patrones de texto en archivos o en la salida de otros comandos. Permite encontrar líneas que coincidan con un patrón especificado y resaltar o mostrar esas líneas en la terminal.

La estructura general del comando grep es la siguiente: 

```bash
grep [opciones] patrón [archivos]
```

  - `[opciones]`: Opcional. Puedes utilizar diversas opciones para personalizar tu búsqueda (ver detalle con `man`).
  - `patrón`: El patrón de texto que deseas buscar en los archivos.
  - `[archivos]`: Opcional. Los archivos en los que deseas buscar el patrón. Si no se proporcionan archivos, `grep` buscará en la entrada estándar.

**Ejemplos de Uso**

1. **Búsqueda en Archivos**:
   - `grep palabra archivo.txt`: Busca la palabra "palabra" en "archivo.txt".

2. **Búsqueda Recursiva en Directorios**:
   - `grep -r patrón directorio`: Busca el patrón en todos los archivos dentro del directorio (y sus subdirectorios).

3. **Búsqueda Insensible a Mayúsculas y Minúsculas**:
   - `grep -i patrón archivo.txt`: Realiza una búsqueda que no distingue entre mayúsculas y minúsculas.

4. **Conteo de Coincidencias**:
   - `grep -c patrón archivo.txt`: Muestra el número de líneas que coinciden con el patrón.

5. **Resaltar Coincidencias**:
   - `grep --color patrón archivo.txt`: Resalta las coincidencias encontradas en color.

6. **Búsqueda Inversa**:
   - `grep -v patrón archivo.txt`: Muestra las líneas que NO coinciden con el patrón.

7. **Búsqueda con Expresiones Regulares**:
   - `grep 'patrón.*expresión' archivo.txt`: Utiliza expresiones regulares para buscar patrones más complejos.

**Opciones Comunes**

  - `-r` o `-R`: Realiza una búsqueda recursiva en directorios.
  - `-i`: Ignora mayúsculas y minúsculas.
  - `-c`: Muestra el conteo de coincidencias.
  - `--color`: Resalta las coincidencias.
  - `-v`: Muestra líneas que NO coinciden.
  - `-E` o `--extended-regexp`: Habilita el uso de expresiones regulares extendidas.

#### `find` (búsqueda)
El comando `find` permite buscar archivos y directorios en una estructura de directorios determinada. Con `find`, podemos buscar en función de diversos criterios, como nombres de archivos, tipos, tamaños y fechas de modificación.

**Sintaxis Básica**
```bash
find directorio -opciones criterio
```
- `directorio`: El directorio desde donde comienza la búsqueda.
- `-opciones`: Puedes utilizar diversas opciones para refinar tu búsqueda.
- `criterio`: Los criterios de búsqueda que deseas aplicar.

**Ejemplos de Uso**
1. **Búsqueda por Nombre**:
   - `find /ruta -name archivo.txt`: Busca "archivo.txt" en la ruta especificada.

2. **Búsqueda por Tipo**:
   - `find /ruta -type f`: Encuentra todos los archivos en la ruta.
   - `find /ruta -type d`: Encuentra todos los directorios en la ruta.

3. **Búsqueda por Tamaño**:
   - `find /ruta -size +1M`: Encuentra archivos mayores de 1 megabyte en la ruta.

4. **Búsqueda por Fecha**:
   - `find /ruta -mtime -7`: Encuentra archivos modificados en los últimos 7 días en la ruta.

5. **Búsqueda por Propietario**:
   - `find /ruta -user usuario`: Encuentra archivos propiedad del usuario especificado.

6. **Búsqueda por Nombre y Tipo**:
   - `find /ruta -name "*.txt" -type f`: Busca archivos con extensión ".txt" en la ruta.

7. **Búsqueda y Ejecución de Comando**:
   - `find /ruta -name "*.log" -exec rm {} \;`: Encuentra archivos con extensión ".log" y los elimina.

### Opciones Comunes

- `-name`: Busca por nombre.
- `-type`: Busca por tipo (f para archivo, d para directorio, l para enlace simbólico, etc.).
- `-size`: Busca por tamaño (ejemplo: +1M para más de 1 MB).
- `-mtime`: Busca por fecha de modificación.
- `-user`: Busca por propietario.
- `-exec`: Ejecuta un comando en los resultados encontrados.

### `wc` (word count)
El comando `wc` es una herramienta útil que nos permite contar la cantidad de líneas, palabras o caracteres que tiene un archivo.

  - `wc -l {file}`: muestra la cantidad de líneas que tiene el archivo {file}
  - `wc -w {file}`: muestra la cantidad de palabras que tiene el archivo {file}
  - `wc -m {file}`: muestra la cantidad de caracteres que tiene el archivo {file}

### Resumen
|                          |                                                            |
|--------------------------|------------------------------------------------------------|
| cp {file1} {file2}       | copia {file1} y lo nombra {file2}                          |
| mv {file1} {file2}       | mueve or renombra {file1} a {file2}                        |
| rm {file}                | borra el archivo {file}                                    |
| rmdir {dir}              | borra el directorio {dir}                                  |
| cat {file}               | Concatena y muestra el contenido de {file}                 |
| less {file}              | Muestra el contenido de {file} de forma paginada           |
| more {file}              | Muestra el contenido de {file} de forma paginada           |
| head {file}              | muestra las primeras líneas de {file}                      |
| tail {file}              | muestra las últimas líneas de {file}                       |
| grep 'filtro' {file}     | busca en {file} coincidencias según el `filtro' indicado   |
| wc {file}                | cuenta la cantidad de líneas/palabras/caracteres en {file} |
| find {ruta} -name {file} | busca {file} en la {ruta} especificada.                    |


## Variables de entorno
Las variables de entorno en Linux son valores que se utilizan para configurar el entorno en el que se ejecutan los procesos. Estas variables proporcionan información y opciones específicas a las aplicaciones, así como configuraciones personalizadas para cada usuario.

### Características de las Variables de Entorno:

1. **Configuración Global y Personal**: Las variables de entorno pueden ser globales, aplicándose a todo el sistema, o específicas de usuario, afectando solo al usuario actual.

2. **Valores de Configuración**: Las variables de entorno contienen valores que influyen en el comportamiento de las aplicaciones y procesos.

3. **Accesibilidad**: Los programas pueden acceder a las variables de entorno para obtener información específica o ajustar su funcionamiento.

4. **Diferentes Propósitos**: Las variables de entorno pueden utilizarse para proporcionar información como rutas de archivos, ubicaciones de bibliotecas, ajustes de idioma y más.

### Manipulación de Variables de Entorno:

1. **Ver Variables de Entorno**:
   - `env`: Muestra todas las variables de entorno actuales.

2. **Definir Variables de Entorno Temporales**:
   - `NOMBRE_VARIABLE=valor_comando`: Define una variable de entorno solo para el comando especificado.

3. **Definir Variables de Entorno Permanentes**:
   - Puedes agregar definiciones de variables en archivos de inicio, como `.bashrc` o `.profile`, para que se carguen cada vez que inicies sesión.

### Ejemplos de Variables de Entorno:

1. **`PATH`**: Define las rutas de búsqueda de ejecutables. Cuando ejecutas un comando, el sistema busca en las rutas listadas en `PATH`.

2. **`HOME`**: Contiene la ruta del directorio personal del usuario actual.

3. **`USER`** o **`LOGNAME`**: Contiene el nombre del usuario actual.

4. **`LANG`** y **`LC_*`**: Configuran el idioma y la configuración regional utilizados por aplicaciones.

5. **`LD_LIBRARY_PATH`**: Define las rutas de búsqueda de bibliotecas compartidas (shared libraries).

6. **`PS1`**: Define el formato del prompt en la terminal.

### Ejemplo Práctico:

Supongamos que deseas agregar una ruta personalizada a `PATH` para que los comandos en ese directorio sean ejecutables desde cualquier ubicación:

```bash
export PATH=$PATH:/ruta/a/mi/directorio
```

Esto agrega `/ruta/a/mi/directorio` a la variable `PATH`.


## Redireccionamiento de entrada/salida
Como mencionamos anteriormente, todo es un archivo en Linux. De la misma manera, podemos decir que todo lo que ejecutemos generará como resultado texto, el cual será enviado a los flujos STDOUT o STDERR y de igual manera, el contenido que ingresemos será canalizado por STDIN. Basandonos en este concepto básico del entorno podemos utilizar la herramienta de redireccionamiento que nos permite manipular la entrada y salida estándar de los procesos en la línea de comandos. Esto permite realizar tareas como redirigir la salida de un comando a un archivo, combinar la salida de múltiples comandos o proporcionar datos de un archivo como entrada a un comando. 

Esta tarea la podemos realizar con los operadores de redireccionamiento:

  - Redireccionamiento de Salida `>`
  El operador `>` se utiliza para redirigir la salida estándar de un comando a un archivo. Si el archivo ya existe, su contenido se sobrescribirá. Si el archivo no existe, se creará.
  
  Ejemplo: `ls > listado.txt` ejecutará el comando ls y guardará su salida en un archivo llamado listado.txt.

  - Redireccionamiento de Salida de Concatenación `>>`
  El operador `>>` se utiliza para redirigir la salida estándar de un comando y agregarla al final de un archivo existente en lugar de sobrescribirlo.

  Ejemplo: `echo "nuevo contenido" >> archivo.txt` agrega "nuevo contenido" al final de archivo.txt.

  - Redireccionamiento de Entrada `<`
  El operador `<` se utiliza para proporcionar datos de un archivo como entrada estándar a un comando en lugar de usar la entrada del teclado.

  Ejemplo: `sort < datos.txt` ordenará las líneas del archivo datos.txt.

  - Redireccionamiento de Entrada y Salida de Error `2>` y `2>>`
  Los operadores `2>` y `2>>` se utilizan para redirigir la salida de error estándar (stderr) de un comando a un archivo.

  Ejemplo: `comando_inexistente 2> error.txt` capturará los mensajes de error del comando inexistente y los guardará en error.txt.

  - Tuberías `|`
  Las tuberías se utilizan para redirigir la salida de un comando como entrada al siguiente comando. Esto permite encadenar múltiples comandos juntos.

  Ejemplo: `ls | grep archivo | head` listará los archivos en un directorio y luego pasará la lista a grep para buscar "archivo" y finalmente ese resultado será enviado a head para mostrar los primeros 10 resultados.

## Procesos
En Linux, un proceso es una instancia en ejecución de un programa. Cada vez que ejecutas un programa, se crea un nuevo proceso para ese programa. Como parte del manejo de dichos procesos, podremos visualizar los procesos en ejecución, eliminarlos, enviarles señales y también crearlos.

### Visualización de Procesos:

1. **`ps`**: El comando `ps` muestra información sobre los procesos en ejecución en el sistema. Algunas opciones comunes son:
   - `ps`: Muestra los procesos asociados con la terminal actual.
   - `ps aux`: Muestra una lista completa de todos los procesos en el sistema.

2. **`top`**: El comando `top` muestra una lista actualizada de los procesos en tiempo real. Puedes ver información como el uso de CPU, memoria y más. Presiona "q" para salir de `top`.

3. **`pgrep`**: El comando `pgrep` busca procesos basados en nombres y otros criterios.
   - `pgrep nombre_proceso`: Muestra los IDs de proceso de los procesos con el nombre "nombre_proceso".

### Señales
Dentro del entorno Linux podremos comunicarnos con los procesos mediante el uso de señales. Para conocer, se puede consultar la página de ayuda sobre la biblioteca de señales:
```bash
man signals
```

1. **`kill`**: El comando `kill` se utiliza para enviar señales a los procesos. La señal por defecto es SIGTERM (15), que solicita al proceso que termine. Sintaxis básica: `kill [signal] PID`
   - `kill PID`: Envía la señal SIGTERM al proceso con el ID de proceso (PID).
   - `kill -9 PID`: Envía la señal SIGKILL (9), que fuerza la terminación inmediata del proceso.
   - `kill -SIGUSR1 PID`: Envía la señal SIGUSR1 (10), que es una señal que el usuario puede programar, aunque si comportamiento por defecto es la finalización del proceso.

2. **`pkill`**: El comando `pkill` permite buscar y matar procesos basados en sus nombres o criterios.
   - `pkill nombre_proceso`: Mata todos los procesos con el nombre "nombre_proceso".

3. **`ctrl + c`**: En la terminal, puedes usar `ctrl + c` para interrumpir (terminar) el proceso actual en ejecución.

### Procesos en Segundo Plano:
Al ejecutar un comando en la terminal estamos acostumbrados a esperar un resultado "inmediato" y que el proceso finalice, pero hay ocaciones donde eso no ocurre, ya sea porque es un proceso muy largo o porque se ejecuta periodicamente o porque tienen dependencias con la ejecución de otros procesos. Para estos casos, tenemos la opción de crear procesos que quedan en ejecución sin bloquear la terminal, por lo que se lo suele llamar en "segundo plano".

**Algunas alternativas para el manejo de los procesos en segundo plano**

1. **`&` al final del comando**: Agregar `&` al final de un comando lo ejecuta en segundo plano.
   - Ejemplo: `programa &` ejecuta "programa" en segundo plano.

2. **`nohup`**: El comando `nohup` ejecuta un programa en segundo plano y mantiene el programa ejecutándose incluso después de cerrar la terminal.

3. **`bg` y `fg`**: Estos comandos se utilizan para poner en segundo plano (background) y traer al primer plano (foreground) procesos suspendidos o en segundo plano.


## Daemons

Los daemons (demonios) en Linux son programas que se ejecutan en segundo plano de manera continua, sin interacción directa con los usuarios. Estos procesos son esenciales para el funcionamiento del sistema operativo y para proporcionar servicios a los usuarios y aplicaciones. Los daemons son iniciados durante el arranque del sistema y pueden ejecutarse durante toda la duración del tiempo que la máquina esté en funcionamiento. 

### Características de los Daemons:

1. **Ejecución en Segundo Plano**: Los daemons se ejecutan en segundo plano, lo que significa que no tienen una interfaz de usuario directa.

2. **Independencia del Usuario**: Los daemons no dependen de la interacción de un usuario específico. Pueden seguir funcionando incluso si no hay usuarios conectados.

3. **Arranque Automático**: Los daemons se inician automáticamente durante el arranque del sistema, generalmente desde los scripts de inicio (`init` en sistemas antiguos o `systemd` en sistemas modernos).

4. **Propósito Específico**: Cada daemon generalmente tiene un propósito específico, como administrar servicios de red, monitorear recursos, administrar impresoras, entre otros.

5. **Control y Configuración**: Los daemons a menudo se controlan mediante comandos específicos o archivos de configuración. Pueden ser configurados para adaptarse a las necesidades del sistema y los usuarios.

6. **Comunicación con Otros Procesos**: Los daemons pueden comunicarse con otros procesos a través de sockets, colas de mensajes o archivos compartidos para proporcionar servicios a otras aplicaciones.

### Ejemplos de Daemons:

1. **`httpd`**: El daemon de servidor web Apache, que gestiona las solicitudes de los navegadores web y entrega páginas web.

2. **`sshd`**: El daemon del servicio SSH (Secure Shell) que permite a los usuarios acceder de forma segura al sistema de forma remota.

3. **`cron`**: El daemon que ejecuta tareas programadas automáticamente en momentos específicos.

4. **`syslogd`**: El daemon que gestiona los registros del sistema y eventos.

5. **`cupsd`**: El daemon que controla el sistema de impresión y permite a los usuarios imprimir documentos.

### Manejo de Daemons:

Puedes interactuar con los daemons utilizando comandos como `systemctl` (en sistemas compatibles con `systemd`) o scripts de inicio personalizados. Algunas operaciones comunes incluyen:

- Iniciar un daemon: `sudo systemctl start nombre_del_daemon`
- Detener un daemon: `sudo systemctl stop nombre_del_daemon`
- Reiniciar un daemon: `sudo systemctl restart nombre_del_daemon`
- Habilitar un daemon para el inicio automático: `sudo systemctl enable nombre_del_daemon`
- Deshabilitar un daemon del inicio automático: `sudo systemctl disable nombre_del_daemon`

Los daemons son un componente fundamental del sistema Linux y desempeñan un papel crucial en la prestación de servicios y en la administración del sistema.

