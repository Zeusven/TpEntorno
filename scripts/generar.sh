#!/bin/bash

# Genera imágenes utilizando algún servicios web. Tener
# en cuenta que al descargar de una página conviene usar un sleep entre
# descarga y descarga para no saturar el servicio y evitar problemas. Se debe
# poder indicar por argumento cuantas imágenes generar y se deben asignar
# nombres de archivo al azar de una lista de nombres de personas. Luego
# se deben comprimir las imágenes, y generar un archivo con su suma de
# verificación.

echo "Cuantas imagenes desea generar?"
read CANTIDAD


# Descarga de imagenes
if [ $"ls ../datasets/*.jpg" ]
then
  rm -f ../datasets/*.jpg
  # Descarga csv con nombres
  if [ -f $"../datasets/names.csv" ]
  then
    echo "El csv ya existe."
  else
    curl https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv > ../datasets/names.csv
    echo "Descargando csv"
  fi
  for (( i=1; i<=CANTIDAD; i+=1 ))
  do
    curl https://thispersondoesnotexist.com/ > ../datasets/imagen$i.jpg
    sleep 1
  done
fi


