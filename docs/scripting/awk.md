# Manual de AWK

## Introducción

AWK es un poderoso lenguaje de programación diseñado para el procesamiento de textos y datos. Es especialmente útil para trabajar con archivos de texto estructurados, como archivos CSV o de registro, donde se necesitan operaciones de filtrado, búsqueda y transformación.

Este manual proporciona una introducción a AWK, explicando su sintaxis básica, características principales y ofreciendo ejemplos prácticos para su uso.

## Sintaxis básica

AWK se ejecuta desde la línea de comandos o desde scripts de AWK. La sintaxis básica de un comando AWK es la siguiente:

```awk
patrón { acción }
```

Donde:
- **patrón**: Es una condición que determina si se ejecuta la acción o no.
- **acción**: Es un conjunto de instrucciones que se ejecutan si el patrón se cumple.

## Parámetros de ejecución

AWK admite varios parámetros que pueden utilizarse para personalizar su comportamiento durante la ejecución. Algunos de los parámetros más comunes son:

- **-F <carácter>**: Especifica el delimitador de campos. Por ejemplo, `-F,` define la coma como el delimitador.
- **-v variable=valor**: Define variables de AWK con valores específicos antes de que se ejecute el script de AWK.
- **-f archivo**: Lee el script AWK desde un archivo en lugar de especificarlo en la línea de comandos.
- **-W opción**: Controla varios aspectos del comportamiento de AWK, como la precisión de los números flotantes o la longitud máxima de las líneas de entrada.

## Variables de entorno

AWK también hace uso de algunas variables de entorno que pueden influir en su comportamiento. Algunas de estas variables son:

- **AWKPATH**: Especifica una lista de directorios separados por dos puntos donde se buscarán los scripts de AWK incluidos con la función `include`.
- **AWKLIBPATH**: Especifica una lista de directorios separados por dos puntos donde se buscarán las bibliotecas de AWK incluidas con la función `include`.

## Estructuras de control y bloques BEGIN y END

AWK admite estructuras de control como en otros lenguajes de programación. Puedes usar `if`, `else`, `while`, `for`, entre otras.

```awk
if (condición) {
    acción
} else {
    otra_acción
}
```

También puedes utilizar los bloques `BEGIN` y `END`. El bloque `BEGIN` se ejecuta antes de procesar cualquier línea del archivo de entrada, y el bloque `END` se ejecuta después de procesar todas las líneas.

```awk
BEGIN {
    # Instrucciones a ejecutar antes de procesar el archivo
}

{
    # Acciones a realizar en cada línea del archivo
}

END {
    # Instrucciones a ejecutar después de procesar todas las líneas del archivo
}
```

## Ejemplos de uso

### Ejemplo 1: Filtrar líneas

```bash
awk '/patrón/ {print $0}' archivo.txt
```

Este comando imprime todas las líneas del archivo `archivo.txt` que contienen el patrón especificado.

Ejemplo:

```bash
awk '/error/' registros.log
```

### Ejemplo 2: Imprimir columnas específicas

```bash
awk -F',' '{print "Nombre:", $1, "\tEdad:", $2}' datos.csv
```

Este comando imprime el primer y segundo campo de cada línea del archivo `datos.csv`, etiquetándolos como "Nombre" y "Edad" respectivamente, considerando que el delimitador es una coma.

Ejemplo:

```bash
awk -F'\t' '{print "Nombre:", $1, "\tEdad:", $2}' empleados.txt
```

### Ejemplo 3: Calcular el promedio de una columna

```bash
awk '{ total += $1 } END { print "El promedio es:", total/NR }' notas.txt
```

Este comando calcula el promedio de la primera columna de todas las líneas del archivo `notas.txt` e imprime el resultado.

Ejemplo:

```bash
awk '{ total += $1 } END { print "El promedio es:", total/NR }' ventas.csv
```

## Archivos de ejemplo
Estos son los archivos de ejemplo que se utilizaron en los ejemplos de AWK proporcionados anteriormente. Puedes copiar y pegar el contenido de estos archivos en archivos separados en tu sistema para probar los ejemplos. Si necesitas más detalles o tienes alguna otra pregunta, no dudes en preguntar.

### archivo.txt

```
Nombre Edad
Juan   25
María  30
Pedro  28
```

### registros.log

```
[2024-04-09 10:15:32] Error: Fallo en la conexión
[2024-04-09 10:20:45] Advertencia: Sobrecarga del servidor
[2024-04-09 10:25:59] Información: La operación se completó con éxito
```

### datos.csv

```
Nombre,Edad
Ana,20
Juan,25
María,30
Pedro,28
```

### empleados.txt

```
Nombre    Edad
Carlos    35
Sara      29
Pedro     28
```

### notas.txt

```
85
90
78
92
```

### ventas.csv

```
100
200
150
300
```

## Conclusiones

AWK es una herramienta versátil y potente para el procesamiento de texto y datos en sistemas Unix y Linux. Con una sintaxis concisa y poderosas capacidades de procesamiento, AWK es una opción excelente para tareas de filtrado, búsqueda y transformación de datos.

Este manual proporciona solo una introducción básica a AWK. Para aprender más sobre sus características avanzadas y su uso en situaciones más complejas, se recomienda consultar la documentación oficial y explorar ejemplos adicionales.
