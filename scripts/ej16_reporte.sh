#!/bin/bash
# Recibe una extensión como parámetro y realiza un reporte con dos columnas:
# Una con el nombre de usuario y la otra con la cantidad de archivos que posee con esa extensión
# El resultado se guarda en un archivo reporte.txt

if [ $# -ne 1 ]
then echo "Se debe pasar sólo la extensión"
     exit 1
fi

for linea in $(cat /etc/passwd | cut -d: -f 1,6); do
    user=$(echo $linea | cut -d: -f1)
    home=$(echo $linea | cut -d: -f2)
    # echo "Usuario: $user - Home: $home"
    if [ -d $home ]; then
         find $home -name "*.$1" 
    done
