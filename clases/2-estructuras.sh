#!/bin/bash
# Variable y estructuras de control básicas

echo 'Variables reservadas'
echo '$?' $? # Devuelve el valor retornado por el comando anterior
echo '$#' $# # Cantidad de parámetros pasados al script
echo '$0' $0 # Nombre del script
echo '$1' $1 # Primero param
echo '$2' $2 # Segundo param
echo '$3' $3 # Tercero
echo '$@' $@ # Todos los parámetros como array

nombre=$1
edad=$2

echo ""

if [ $edad -gt 70 ] # if test $edad -gt 70
then
    echo "$nombre, ya estás viejo"
elif [[ $edad > 50 ]]
then
    echo "$nombre, no tan joven"
else
    echo "$nombre, todavía sos joven"
fi

echo ""

cantidad=3
while [ $cantidad -gt 0 ]
do
    echo "while: $cantidad"
    (( cantidad -= 1 ))
done

echo ""

for i in {1..3}
do
    echo "for: $i"
done

echo ""

for archivo in "$(ls)"
do
    echo "$archivo"
done

# -eq ==
# -ne !=
# -gt >
# -ge >=
# -lt <
# -le <=

# Para strings: "str1" != "str2"      "str4" = "str4"
