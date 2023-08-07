#!/bin/bash

# Genera imágenes utilizando algún servicio web. Tener
# en cuenta que al descargar de una página conviene usar un sleep entre
# descarga y descarga para no saturar el servicio y evitar problemas. Se debe
# poder indicar por argumento cuantas imágenes generar

# y se deben asignar nombres de archivo al azar de una lista de nombres de personas. Luego
# se deben comprimir las imágenes, y generar un archivo con su suma de
# verificación.

echo "Cuantas imagenes desea generar?"
read CANTIDAD_IMAGENES


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
    curl https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv -o ../datasets/names.csv
  fi
fi

function descargar_csv() {
  RUTA_CSV="../datasets/names.csv"
  # NOMBRES=$(cat "$RUTA_CSV")
  # LISTA_NOMBRES=()
  while IFS= read -r LINE
  do
    NOMBRE=$(echo "$LINE" | awk -F ',' '{print $1}')  # Extraer el nombre antes de la coma
    echo $NOMBRE
    LISTA_NOMBRES+=("$NOMBRE")
  done < "$RUTA_CSV"
}

descargar_csv

echo "antes del for"
for asd in "${LISTA_NOMBRES[@]}"
do
  echo "$asd"
done
echo "despues del for"


# Descarga de imagenes
# for (( i=1; i<=CANTIDAD_IMAGENES; i+=1 ))
# do
#   curl https://thispersondoesnotexist.com/ -o ../datasets/imagen$i.jpg
#   sleep 1
# done

# echo $NOMBRES


