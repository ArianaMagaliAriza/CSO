#!/bin/bash
# Recibo un directorio como parámetro 
# y renombro los nombres de todos los archivos (files) de ese directorio
# concatenandolos con la cadena pasada también como parámetro

if [ $# -ne 3 ]
then
	echo "Se debe pasar el pwd, el operador (-a o -b) y la cadena"
	exit 1
fi

if [ ! -d "$1" ]; then
  echo "El directorio $1 no existe."
  exit 1
fi

directorio=$1
opcion=$2
cadena=$3  

# Recorremos los archivos en el directorio
for archivo in "$directorio"/*; do
  # Verificamos si es un archivo regular
  if [ -f "$archivo" ]; then
    nombre_archivo=$(basename "$archivo")  # Obtengo el nombre del archivo
    if [ "$opcion" == "-a" ]; then
      nuevo_nombre="${directorio}/${nombre_archivo}${cadena}"  # concateno al final
    elif [ "$opcion" == "-b" ]; then
      nuevo_nombre="${directorio}/${cadena}${nombre_archivo}"  # concateno al inicio
    else
      echo "Opción no válida. Use -a para sufijo o -b para prefijo."
      exit 1
    fi

    # Renombro el archivo
    mv "$archivo" "$nuevo_nombre"
    echo "Archivo renombrado: $nombre_archivo -> $(basename "$nuevo_nombre")"
  fi
done
