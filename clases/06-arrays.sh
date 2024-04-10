#!/bin/bash
# Manejo de arrays

declare -a miArray

miArray=()

miArray=(21 27 'lunes' 'agosto' 'meses del año')
miArray+=(2021)

echo ${miArray[@]}
echo "Tamaño del array: ${#miArray[@]}"
echo "Índice 2: ${miArray[2]}"

miArray[2]='martes'
echo ${miArray[@]}
echo "Índice 2: ${miArray[2]}"

unset miArray[2]
echo ${miArray[@]}
echo "Índice 2: ${miArray[2]}"
echo "Tamaño del array: ${#miArray[@]}"

for item in ${miArray[@]}
do
    echo "Item -> $item"
done

unset miArray


# Arrays asociativos
declare -A arrayAsociativo
