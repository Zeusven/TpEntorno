#!/bin/bash

PS3="Elija una tarea : "
OPCIONES=( "Generar imágenes" "Descomprimir imágenes" "Procesar imágenes" "Comprimir imágenes" "Salir" )
select OPT in "${OPCIONES[@]}"
do
  case $OPT in
    "Generar imágenes")
      bash generar.sh
      break
      ;;
    "Descomprimir imágenes")
      bash descomprimir.sh
      break
      ;;
    "Procesar imágenes")
      bash procesar.sh
      break
      ;;
    "Comprimir imágenes")
      bash comprimir.sh
      break
      ;;
    "Salir")
      break 2
      ;;
    *)
      echo "Opcion no válida."
  esac
done
