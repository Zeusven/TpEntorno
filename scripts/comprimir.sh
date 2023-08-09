#!/bin/bash

# Finalmente, luego de procesadas las imágenes, se debe:
# - generar un archivo con la lista de nombres de todas las imágenes.
# - generar un archivo con la lista de nombres válidos.
# - generar un archivo con el total de personas cuyo nombre finaliza con
#   la letra a.

# - por último, generar un archivo comprimido que incluya los archivos
#   generados en los items anteriores y todas las imágenes. El archivo
#   comprimido debe poder accederse desde fuera del contenedor.

# function comprimir() {
#   # El primer parametro es el nombre del archivo que se crea
#   # El segundo es la ruta del archivo a comprimir
#   tar -zcvf $1 "$2"
# }

mv ../datasets/imagenes ../datasets/para_comprimir/
mv ../datasets/procesado ../datasets/para_comprimir/

tar -zcvf ../datasets/resultado.tar.gz "../datasets/para_comprimir"

# # para probar
# mkdir -p ../datasets/resultado
# tar -zxvf ../datasets/resultado.tar.gz -C ../datasets/resultado
