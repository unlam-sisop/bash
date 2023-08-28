#!/bin/bash
# Manejo de señales

# SIGINT: Ctrl+C - Termina proceso
# SIGUSR1, SIGUSR2: Señales para el usuario - Termina proceso
# SIGTERM: Termina el proceso
# SIGKILL: Termina el proceso - No se puede modificar
# SIGSTOP: Termina el proceso - No se puede modificar
# SIGCHLD: Avisa del fin de un hijo

function manejadorSigTerm() {
    echo "Llegó un sigterm"
    exit 0
}

function manejadorSigInt() {
    
}

trap manejadorSigTerm SIGTERM
trap manejadorSigInt SIGINT

while [ 1 -eq 1 ]
do
    echo "1" > /dev/null
    echo "2" > /dev/null
    echo "3" > /dev/null
    echo "4" > /dev/null
    echo "5" > /dev/null
    echo "6" > /dev/null
    echo "7" > /dev/null
done
 
# Otros comandos:
# trap - SIGTERM # Reseteamos el handler de la señal
# trap -p # Vemos los manejadores seteados
