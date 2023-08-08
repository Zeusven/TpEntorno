#!/bin/bash

echo "Cuantas imagenes desea generar?"
read CANTIDAD_IMAGENES
RUTA_CSV="../datasets/names.csv"

if [ ! -d "../datasets/imagenes" ]
then
  echo "el directorio no existe"
  mkdir -p ../datasets/imagenes
fi

# Limpieza del directorio y descarga del csv con nombres
if [ $"ls ../datasets/imagenes/*.jpg" ]
then
  rm -f ../datasets/imagenes/*.jpg
  # Descarga csv con nombres
  if [ ! -f $"../datasets/names.csv" ]
  then
    echo "Descargando csv"
    curl https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv -o $RUTA_CSV
  fi
fi

LISTA_NOMBRES=$(cat $RUTA_CSV | awk -F',' '{print $1}')

# Descarga de imagenes y asignacion de nombre random
for (( i=1; i<=CANTIDAD_IMAGENES; i+=1 ))
do
  NOMBRE_ALEATORIO=$(shuf -n 1 <<< "$LISTA_NOMBRES")
  curl https://thispersondoesnotexist.com/ -o "../datasets/imagenes/$NOMBRE_ALEATORIO.jpg"
  sleep 1
done

# Compresion de las imagenes
tar -zcvf ../datasets/imagenes.tar.gz "../datasets/imagenes"

# Generacion de la suma de verificacion
sha256sum ../datasets/imagenes.tar.gz > ../datasets/imagenes.tar.gz.sha256

# Limpieza de directorios
rm -r ../datasets/imagenes
rm -r ../datasets/names.csv