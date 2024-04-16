#!/bin/bash

# Usando "wget" para realizar una petición a una API REST.
# Usamos de ejemplo la API de "jsonplaceholder" que nos devuelve un JSON con los datos de un usuario.
# * El parámetro O- indica que la salida sea por stdout. Eliminando este parámetro se puede guardar la salida en un archivo.
# * El parámetro q indica que no muestre mensajes de progreso.
wget -qO- https://jsonplaceholder.typicode.com/users/1

# Para interpretar el JSON se puede usar "jq".
# * Se puede instalar con "sudo apt install jq" ya que no viene por defecto en la instalación de Ubuntu.
# * Se puede usar para extraer datos de un JSON.
wget -qO- https://jsonplaceholder.typicode.com/users/1 | jq '.name'
wget -qO- https://jsonplaceholder.typicode.com/users/1 | jq '.address.street'
wget -qO- https://jsonplaceholder.typicode.com/users/1 | jq '{nombre:.name, calle:.address.street}'

# Generando un JSON con "jq".
# * Se puede usar para generar un JSON.
jq -n '{nombre:"Juan", edad:30}'
