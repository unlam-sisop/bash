#!/bin/bash
# Concatenación de comandos y redirecciones del flujos

# STDOUT: 1
# STDERR: 2
# STDIN: 3

echo "salida" > salida.txt # Redirección de flujo STDOUT. Sobrescribe salida.txt.
echo "salida" >> salida.txt # Redirección de flujo STDOUT. Agrega a salida.txt.
echo "salida" 2> errores.txt # Redirección de flujo STDERR. Sobrescribe errores.txt.
echo "salida" 2>> errores.txt # Redirección de flujo STDERR. Agrega a errores.txt.
