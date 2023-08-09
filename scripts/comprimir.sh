#!/bin/bash

# Finalmente, luego de procesadas las imágenes, se debe:
# - generar un archivo con la lista de nombres de todas las imágenes.
# - generar un archivo con la lista de nombres válidos.
# - generar un archivo con el total de personas cuyo nombre finaliza con
#   la letra a.

# - por último, generar un archivo comprimido que incluya los archivos
# generados en los items anteriores y todas las imágenes. El archivo
# comprimido debe poder accederse desde fuera del contenedor.

RUTA_IMAGENES="../datasets/imagenes"
LISTA_IMAGENES=("$RUTA_IMAGENES"/*)
# mkdir -p ../datasets/procesado
mkdir -p ../datasets/para_comprimir



for IMAGEN in "${LISTA_IMAGENES[@]}"
do
  NOMBRE_ARCHIVO=$(basename "$IMAGEN")
  echo $NOMBRE_ARCHIVO >> ../datasets/para_comprimir/todas_las_imagenes.txt
  if [[ $NOMBRE_ARCHIVO =~ ^[A-Z][a-z]* ]]
  then
    echo $NOMBRE_ARCHIVO >> ../datasets/para_comprimir/imagenes_validas.txt
    # convert "$RUTA_IMAGENES/$NOMBRE_ARCHIVO" -gravity center -resize 512x512+0+0 -extent 512x512 "../datasets/procesado/$NOMBRE_ARCHIVO"
  fi
  if [[ $NOMBRE_ARCHIVO =~ a\.jpg$ ]]
  then
    echo $NOMBRE_ARCHIVO >> ../datasets/para_comprimir/terminadas_en_a.txt
    # convert "$RUTA_IMAGENES/$NOMBRE_ARCHIVO" -gravity center -resize 512x512+0+0 -extent 512x512 "../datasets/procesado/$NOMBRE_ARCHIVO"
  fi
done

