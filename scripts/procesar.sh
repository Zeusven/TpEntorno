#!/bin/bash

RUTA_IMAGENES="../datasets/imagenes"
LISTA_IMAGENES=("$RUTA_IMAGENES"/*)
mkdir -p ../datasets/procesado
mkdir -p ../datasets/para_comprimir

for IMAGEN in "${LISTA_IMAGENES[@]}"
do
    NOMBRE_ARCHIVO=$(basename "$IMAGEN")
    # Verificar si el nombre de archivo empieza con mayuscula y sigue con minusculas
    if [[ $NOMBRE_ARCHIVO =~ ^[A-Z][a-z]* ]]
    then
        echo $NOMBRE_ARCHIVO >> ../datasets/para_comprimir/imagenes_validas.txt
        convert "$RUTA_IMAGENES/$NOMBRE_ARCHIVO" -gravity center -resize 512x512+0+0 -extent 512x512 "../datasets/procesado/$NOMBRE_ARCHIVO"
    fi
done
