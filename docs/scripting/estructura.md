# Estructura de un script


## Interprete
Como se mencionó, un script es una secuencia de código interpretado, por lo que lo primero que haremos es  definir el intérprete que debe utilizarse para ejecutar el script, y para esto se utiliza una línea especial llamada "magic number" o "shebang", al comienzo del archivo. Esto indica qué intérprete debe utilizarse para interpretar y ejecutar el script. Generalmente se coloca como la primera línea del archivo de script y tiene el siguiente formato:

```bash
#!/ruta/al/intérprete
```

Donde `/ruta/al/intérprete` es la ruta completa del ejecutable del intérprete que se utilizará para interpretar el script. Aquí hay algunos ejemplos:

- Si estás escribiendo un script de Bash:
  ```bash
  #!/bin/bash
  ```

- Si estás escribiendo un script de Python:
  ```python
  #!/usr/bin/python3
  ```

- Si estás escribiendo un script en Perl:
  ```perl
  #!/usr/bin/perl
  ```

- Si estás escribiendo un script en Ruby:
  ```ruby
  #!/usr/bin/ruby
  ```

Esta línea permite que el sistema sepa qué intérprete utilizar para ejecutar el script, incluso si no se especifica explícitamente al invocar el script en la línea de comandos. Además, es importante dar al archivo de script los permisos adecuados para que sea ejecutable. Como ya vimos, esto se puede hacer usando el comando `chmod`.

```bash
chmod +x nombre_del_script
```

Luego, podemos ejecutar el script directamente usando `./nombre_del_script`.

Recordemos que la ruta al intérprete puede variar según la configuración del sistema y se puede encontrar la ruta correcta ejecutando el comando `which` seguido del nombre del intérprete. Por ejemplo:

```bash
which bash
which python3
which perl
which ruby
```


## Comentarios
Los comentarios se utilizan para agregar anotaciones y explicaciones en el código del script. Los comentarios no se ejecutan como parte del script y no afectan el funcionamiento del mismo. Sirven para hacer que el código sea más comprensible para los programadores y para documentar el propósito y el funcionamiento de diferentes partes del script. Los comentarios en Bash se escriben de la siguiente manera:

```bash
# Esto es un comentario en Bash
```

Los comentarios comienzan con el símbolo numeral (`#`) y continúan hasta el final de la línea. A continuación podemos algunos ejemplos de cómo se usan los comentarios en Bash:

```bash
#!/bin/bash

# Este es un script de bienvenida
echo "¡Hola, bienvenido a mi script!"

# Asignar un valor a una variable
nombre="Juan"

# Imprimir el valor de la variable
echo "Hola, $nombre."

# Este es un comentario más detallado
# que explica lo que hace el siguiente comando
ls -l /ruta/al/directorio
```

## Comillas

El manejo de comillas en Bash es importante para indicar cómo se deben interpretar y tratar los caracteres en una cadena de texto. En Bash, hay tres tipos principales de comillas y cada tipo tiene un propósito específico en relación con la interpretación y expansión de caracteres: comillas simples (`'`), comillas dobles (`"`) y comillas invertidas o de comando (`` ` ``). Cada tipo de comilla tiene un propósito específico en relación con la interpretación y expansión de caracteres.

1. **Comillas Simples (`'`)**:
   - Las comillas simples preservan todo el contenido literal entre ellas, lo que significa que los caracteres especiales y variables dentro de las comillas simples no se expandirán.
   - No puedes incluir comillas simples dentro de otras comillas simples.
   - Ejemplo:
     ```bash
     echo 'Hola, $USER'  # Imprimirá: Hola, $USER
     ```

2. **Comillas Dobles (`"`)**:
   - Las comillas dobles permiten la expansión de variables y caracteres especiales (como `\n` para nueva línea) dentro de la cadena.
   - Puedes incluir comillas simples dentro de comillas dobles, y las variables se expandirán.
   - Ejemplo:
     ```bash
     nombre="Juan"
     echo "Hola, $nombre"  # Imprimirá: Hola, Juan
     ```

3. **Comillas Invertidas o de Comando (`` ` ``)**:
   - Las comillas invertidas (backticks) permiten ejecutar comandos en el shell y reemplazar la comilla invertida con la salida del comando.
   - Es equivalente a usar `$(comando)`, que es una forma más moderna y recomendada.
   - Ejemplo:
     ```bash
     fecha_actual=`date`
     echo "La fecha actual es: $fecha_actual"
     ```

Es importante elegir el tipo de comillas adecuado según el comportamiento que necesitemos. Si deseas que las variables se expandan y los caracteres especiales funcionen, generalmente debes usar comillas dobles. Si deseas que el contenido se trate de manera literal, las comillas simples son útiles. Y si necesitas ejecutar comandos en el shell y capturar su salida, puedes usar comillas invertidas o `$(...)`.

Recuerda que el manejo de comillas es fundamental para evitar errores de expansión no deseados o comportamientos inesperados en tus scripts.


## Parámetros
En Bash, podemos pasar parámetros a un script cuando se lo ejecuta desde la línea de comandos. Estos parámetros permiten que el script reciba información externa y se adapte a diferentes situaciones. Los parámetros se almacenan en variables especiales y se accede a ellos utilizando nombres predefinidos. A continuación veremos cómo manejar parámetros en Bash:

### Parámetros Posicionales:

Los parámetros posicionales son aquellos que se pasan al script en el orden en que se encuentran en la línea de comandos. Los primeros parámetros se almacenan en las variables `$1`, `$2`, `$3`, y así sucesivamente. `$0` contiene el nombre del script que ejecutamos. Por ejemplo:

```bash
#!/bin/bash

echo "Nombre del script: $0"
echo "Primer parámetro: $1"
echo "Segundo parámetro: $2"
echo "Tercer parámetro: $3"
```

Si ejecutas el script con `./mi_script.sh parametro1 parametro2 parametro3`, obtendrás:

```
Nombre del script: ./mi_script.sh
Primer parámetro: parametro1
Segundo parámetro: parametro2
Tercer parámetro: parametro3
```

### Cantidad de Parámetros:

Para conocer la cantidad total de parámetros pasados al script, podemos utilizar la variable `$#`. Por ejemplo:

```bash
#!/bin/bash

echo "Cantidad de parámetros: $#"
```

### Todos los Parámetros:

La variable `$@` contiene todos los parámetros pasados al script como una lista separada por espacios. En [manejo de parámetros](/docs/scripting/parametros.md) veremos que se puede utilizar esta variable especial para manejar los parámetros de forma dinámica y robusta

```bash
#!/bin/bash

echo "Todos los parámetros: $@"
```

### Parámetros Especiales:

- `$0`: El nombre del script.
- `$#`: La cantidad de parámetros.
- `$@`: Todos los parámetros.
- `$1`, `$2`, ...: Parámetros posicionales.

### Ejemplo de Uso:

Supongamos que tienes un script llamado `saludo.sh`:

```bash
#!/bin/bash

echo "¡Hola, $1! Bienvenido a $2."
```

Puedes ejecutarlo de la siguiente manera:

```bash
./saludo.sh Juan "mi script"
```

Y obtendrás:

```
¡Hola, Juan! Bienvenido a mi script.
```


## Variables

En Bash, las variables se utilizan para almacenar y manipular datos. Son una parte fundamental de la programación y scripting, ya que permiten que el código almacene valores y realice operaciones con ellos. Las variables en Bash tienen algunas características importantes:

  1. **Nombres de Variables**: Los nombres de variables en Bash deben comenzar con una letra o un guión bajo (`_`). A continuación, pueden contener letras, números y guiones bajos. Los nombres son sensibles a mayúsculas y minúsculas.

  2. **Asignación de Valores**: Para asignar un valor a una variable, utilizas el signo igual (`=`) sin espacios entre el nombre de la variable, el signo igual y el valor. Por ejemplo: `nombre="Juan"`.

  3. **Uso de Variables**: Para acceder al valor de una variable, se utiliza el signo de dólar (`$`) seguido del nombre de la variable. Por ejemplo: `$nombre`.

  4. **Variables Especiales**: Bash tiene una serie de variables especiales con significados específicos, como por ejemplo: 
      - **`$0`**: El nombre del script actual.
      - **`$#`**: La cantidad de argumentos pasados al script o función.
      - **`$@`**: Todos los argumentos pasados al script o función como una lista separada por espacios.
      - **`$?`**: El valor de retorno del último comando ejecutado. Si es 0, el comando se ejecutó  correctamente;     de lo contrario, indica un error.
      - **`$$`**: El PID (Identificador de Proceso) del script en ejecución.
      - **`$!`**: El PID del último proceso en segundo plano ejecutado.
      - **`$USER`**: El nombre del usuario actual.
      - **`$HOME`**: La ruta al directorio de inicio del usuario actual.
      - **`$PWD`**: La ruta al directorio actual.
      - **`$SHELL`**: La ruta al shell actual.
      - **`$HOSTNAME`**: El nombre del host de la máquina.
      - **`$SECONDS`**: La cantidad de segundos transcurridos desde que el script comenzó a ejecutarse.
      - **`$RANDOM`**: Un número aleatorio entre 0 y 32767.
      - **`$LINENO`**: El número de línea actual en el script.

  5. **Variables de Entorno**: Las variables de entorno son variables especiales que contienen información sobre el entorno del sistema. Puedes acceder a ellas con `$NOMBRE_VARIABLE`.

  6. **Concatenación de Variables**: Puedes concatenar variables usando el operador de concatenación (`$variable1$variable2`), o puedes usar `"${variable1}${variable2}"` para mayor claridad.

  7. **Modificar Variables**: Puedes modificar el valor de una variable utilizando el operador de asignación nuevamente, como `$nombre="Otro nombre"`.

  8. **Variables sin Valor**: Si una variable no tiene un valor asignado, su referencia devolverá una cadena vacía.

  9. **Tipos de datos**: Las variables no las definiremos como enteras, flotantes, string u otro tipo de dato, sino que se considera que por defecto su contenido es texto y según el contexto se interpretará su valor de una forma u otra.

Ejemplo de uso de variables en Bash:

```bash
#!/bin/bash

nombre="Juan"
edad=30

echo "Mi nombre es $nombre y tengo $edad años."
```

En este ejemplo, las variables `nombre` y `edad` almacenan valores que luego se utilizan para imprimir un mensaje.


## Funciones

En Bash, podemos definir funciones para agrupar un conjunto de comandos relacionados y reutilizarlos en nuestro script. Las funciones en Bash funcionan de manera similar a las funciones en otros lenguajes de programación y permiten modularizar el código y hacerlo más organizado y mantenible. A continuación, veremos cómo definir y utilizar funciones en Bash:

### Definir una Función:

Podemos definir una función en Bash de la siguiente manera:

```bash
nombre_de_la_funcion() {
    # Código de la función
}
```

Ejemplo de una función que saluda a alguien:

```bash
saludar() {
    echo "¡Hola, $1!"
}
```

### Llamar una Función:

Después de definir una función, podemos llamarla en cualquier parte del script. Para eso, invocamos su nombre seguido de los parámetros que sean necesarios, similar a como haríamos con un comando:

```bash
saludar "Juan"
```

En este ejemplo, se llama a la función `saludar` y se pasa el argumento `"Juan"`.

### Parámetros en Funciones:

Las funciones en Bash pueden recibir parámetros de la misma manera que los scripts. Los parámetros se referencian dentro de la función utilizando las variables `$1`, `$2`, y así sucesivamente:

```bash
concatenar() {
    echo "$1$2"
}

resultado=$(concatenar "Hola, " "mundo")
echo $resultado
```

### Valor de Retorno:

Las funciones en Bash pueden devolver valores usando el comando `return`. El valor de retorno es un número entero que puede ser utilizado para indicar si la función se ejecutó correctamente o para devolver información específica.

```bash
suma() {
    local resultado=$(( $1 + $2 ))
    return $resultado
}

suma 5 3
resultado=$?
echo "La suma es: $resultado"
```

### Variables Locales:

Dentro de una función, las variables creadas son locales a esa función por defecto. Si deseas que una variable dentro de una función no afecte variables con el mismo nombre fuera de la función, puedes declararla como local utilizando `local`.

```bash
variable_global=10

mi_funcion() {
    local variable_local=5
    echo "Dentro de la función: variable_local = $variable_local"
}

mi_funcion
echo "Fuera de la función: variable_global = $variable_global"
```

## 
## Estructuras de control

En Bash, al igual que en otros lenguajes de programación, podemos utilizar estructuras de control para tomar decisiones y controlar el flujo de ejecución de tus scripts. A continuación, veremos algunas de las estructuras de control básicas:

### 1. Estructura `if`:

La estructura `if` se utiliza para tomar decisiones basadas en una condición. Puedes usarla para ejecutar diferentes bloques de código dependiendo de si una condición es verdadera o falsa.

```bash
if [ condición ]; then
    # Código a ejecutar si la condición es verdadera
else
    # Código a ejecutar si la condición es falsa
fi
```

### 2. Estructura `for`:

La estructura `for` se utiliza para iterar sobre una lista de elementos y ejecutar un conjunto de comandos para cada elemento de la lista.

```bash
for elemento in lista; do
    # Código a ejecutar para cada elemento
done
```

### 3. Estructura `while`:

La estructura `while` se utiliza para ejecutar un conjunto de comandos mientras una condición sea verdadera.

```bash
while [ condición ]; do
    # Código a ejecutar mientras la condición sea verdadera
done
```

### 4. Estructura `until`:

La estructura `until` es similar a `while`, pero se ejecuta mientras la condición sea falsa.

```bash
until [ condición ]; do
    # Código a ejecutar hasta que la condición sea verdadera
done
```

### Ejemplos:

#### Estructura `if`:

```bash
#!/bin/bash

edad=18

if [ $edad -ge 18 ]; then
    echo "Eres mayor de edad."
else
    echo "Eres menor de edad."
fi
```

#### Estructura `for`:

```bash
#!/bin/bash

for color in rojo verde azul; do
    echo "El color es: $color"
done
```

#### Estructura `while`:

```bash
#!/bin/bash

contador=1

while [ $contador -le 5 ]; do
    echo "Contador: $contador"
    contador=$((contador + 1))
done
```

#### Estructura `until`:

```bash
#!/bin/bash

contador=1

until [ $contador -gt 5 ]; do
    echo "Contador: $contador"
    contador=$((contador + 1))
done
```

#### Estructura `case`:

```bash
#!/bin/bash

opcion=$1

case $opcion in
    "opcion1")
        echo "Seleccionaste la opción 1."
        ;;
    "opcion2")
        echo "Seleccionaste la opción 2."
        ;;
    "opcion3")
        echo "Seleccionaste la opción 3."
        ;;
    *)
        echo "Opción no reconocida."
        ;;
esac
```

En este ejemplo, la variable `opcion` se toma como argumento del script. Luego, se utiliza una serie de `case` para comparar el valor de `opcion` con cada caso. El `*)` al final se utiliza para manejar cualquier opción que no coincida con los casos anteriores.

