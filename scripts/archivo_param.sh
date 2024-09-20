#!/bin/bash
#Recibe el nombre de un archivo e informa si existe o no y
#en caso de existir informa si es un archivo (file) o un directorio
#en caso contrario crea un directorio con dicho nombre.


archivos(){
if [ -f "$1" ]; then
	echo "El archivo es un archivo común"
elif [ -d "$1" ]; then
	echo "El archivo es un directorio"
fi
}

if [ $# -ne 1 ]; then
	exit 1
fi

if [ -e "$1" ]; then
	echo "El archivo existe"
	archivos $1
else 
	echo "El archivo no existe, se crea un directorio"
	mkdir "$1"
fi
