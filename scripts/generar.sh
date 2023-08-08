#!/bin/bash

# Genera imágenes utilizando algún servicio web. Tener
# en cuenta que al descargar de una página conviene usar un sleep entre
# descarga y descarga para no saturar el servicio y evitar problemas. Se debe
# poder indicar por argumento cuantas imágenes generar
# y se deben asignar nombres de archivo al azar de una lista de nombres de personas.

# Luego se deben comprimir las imágenes
# y generar un archivo con su suma de verificación.

echo "Cuantas imagenes desea generar?"
read CANTIDAD_IMAGENES
RUTA_CSV="../datasets/names.csv"

# Limpieza del directorio y descarga del csv con nombres
if [ $"ls ../datasets/*.jpg" ]
then
  rm -f ../datasets/*.jpg
  # Descarga csv con nombres
  if [ -f $"../datasets/names.csv" ]
  then
    echo "El csv ya existe."
  else
    echo "Descargando csv"
    curl https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv -o $RUTA_CSV
  fi
fi

LISTA_NOMBRES=$(cat $RUTA_CSV | awk -F',' '{print $1}')

# Descarga de imagenes y asignacion de nombre random
for (( i=1; i<=CANTIDAD_IMAGENES; i+=1 ))
do
  NOMBRE_ALEATORIO=$(shuf -n 1 <<< "$LISTA_NOMBRES")
  curl https://thispersondoesnotexist.com/ -o "../datasets/$NOMBRE_ALEATORIO.jpg"
  sleep 1
done

