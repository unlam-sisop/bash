#!/bin/bash
# Manejo de parámetros

# getopts -> Comando propio de bash, poca flexibilidad
# getopt -> Comando externo, mayor flexibilidad

function ayuda() {
    echo "Esta es la ayuda del script."
}

# ./3-params.sh -n Fernando -e 33
# ./3-params.sh --nombre Fernando -e 33
# ./3-params.sh --nombre Fernando --edad 33
# ./3-params.sh -h
# ./3-params.sh --help
# ./3-params.sh -n f --help -e 40

options=$(getopt -o e:n:h --l help,edad:,nombre: -- "$@" 2> /dev/null)
if [ "$?" != "0" ] # equivale a:  if test "$?" != "0"
then
    echo 'Opciones incorrectas'
    exit 1
fi

eval set -- "$options"
while true
do
    case "$1" in # switch ($1) { 
        -e | --edad) # case "-e":
            edad="$2"
            shift 2

            echo "El parámetro -e o --edad tiene el valor $edad"
            ;;
        -n | --nombre)
            nombre="$2"
            shift 2
            
            echo "El parámetro -n o --nombre tiene el valor $nombre"
            ;;
        -h | --help)
            ayuda
            exit 0
            ;;
        --) # case "--":
            shift
            break
            ;;
        *) # default: 
            echo "error"
            exit 1
            ;;
    esac
done

echo "Hola $nombre, tenés $edad años"

# Código del script


# ./3-params.sh --edad 32 --nombre Fernando
#                 $1   $2    $3     $4

# shift 1
# ./3-params.sh 32 --nombre Fernando
#               $1   $2       $3     

# shift 1
# ./3-params.sh --nombre Fernando
#                $1        $2

