BEGIN {
    print "Empieza procesamiento archivo"
}

{
    for (i = 1; i <= NF; i++) { # NF => Número de campos de la línea
        palabras[$i]++;
    }
}

END {
    for (clave in palabras) {
        # print clave, palabras[clave]
        printf("%s => %d\n", clave, palabras[clave]);
    }
}

# Variables reservadas
# NF: Número de campos
# NR: Número de registro actual (línea actual)
# $0: registro entero
# $1, ${10}: campo
# FS: separador de campos
























# BEGIN {
#     print "Empieza procesamiento archivo"
# }

# {
#     for (i = 1; i <= NF; i++) { # NF => Número de campos de la línea
#         palabras[$i]++;
#     }
# }

# END {
#     for (clave in palabras) {
#         # print clave, palabras[clave]
#         printf("%s => %d\n", clave, palabras[clave]);
#     }
# }

# Variables reservadas
# NF: Número de campos
# NR: Número de registro actual (línea actual)
# $0: registro entero
# $1, ${10}: campo
# FS: separador de campos

# # Array asociativo
# {
#     #: 10
#     Termina: 5
#     SIGINT: 3
#     SIGKILL: 1
#     /dev/null: 7
# }
