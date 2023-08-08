<br/>
<p align="center">
  <a href="https://github.com/Zeusven/TpEntorno">
    <img src="https://i.imgur.com/iOlpcQp.png" alt="Logo">
  </a>

  <h3 align="center">Procesador de imágenes</h3>

  <p align="center">
    Este programa es el resultado de un trabajo práctico para la materia "Entorno de programación" en el cual debimos diseñar y escribir un programa para procesar un lote de imágenes.
    <br/>
    <br/>
  </p>
</p>


<p>
  <a href="https://github.com/Zeusven/TpEntorno/graphs/contributors">
    <img src="https://img.shields.io/badge/Contributors-3-red" alt="contributors" />
  </a>
  <a href="https://github.com/Zeusven/TpEntorno/commits/main">
    <img src="https://img.shields.io/badge/Commits-437-brightgreen" alt="commits" />
  </a>
  <a href="https://github.com/Zeusven/TpEntorno/network/members" alt="forks">
    <img src="https://img.shields.io/badge/Forks-0-blue">
  </a>
  <a href="https://github.com/Zeusven/TpEntorno/issues" alt="issues">
    <img src="https://img.shields.io/badge/Issues-0-green">
  </a>
</p>


## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Scripts](#scripts)
  - [***generar.sh***](#generarsh)
  - [***descomprimir.sh***](#descomprimirsh)
  - [***procesar.sh***](#procesarsh)
  - [***comprimir.sh***](#comprimirsh)
  - [***menu.sh***](#menush)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [generar.sh](#generarsh-1)
- [Roadmap](#roadmap)
- [Authors](#authors)
- [Acknowledgements](#acknowledgements)

## About The Project

<!-- ![Screen Shot](images/screenshot.png) -->


El trabajo consiste en generar un contenedor que al ejecutarse presente un menú de opciones para procesar un lote de imágenes. Deberán editar un Dockerfile y construir una imagen.

Las imágenes a analizar deben ser descargadas o generadas desde internet y
deben almacenarse dentro de un contenedor para su posterior análisis. Luego
del análisis, deberá generarse un archivo disponible fuera del contenedor.

1. Tanto los scripts, como el Dockerfile, deben estar en el repositorio gitlab o github que creen para realizar el desarrollo en equipo.
Deberán trabajar en el repositorio manteniendo la prolijidad y las buenas prácticas de git. Una estrategia muy recomendable es realizar una rama por cada ejercicio e ir integrando a la rama principal a medida que los scripts que resuelven cada ejercicio estén listos. Todos los integrantes deben realizar commits en el repositorio. En ese mismo repositorio debe estar la documentación suficiente para comprender cómo desplegar el contenedor y ejecutar la aplicación, con algunas capturas de ejecución o lo que consideren logre explicitar el funcionamiento y visualizar resultados. Debe ser utilizando un archivo README.md el cual estará presente cuando se accede al repositorio en gitlab o github.

## Scripts
### ***generar.sh***
Genera imágenes utilizando algún servicios web. Tener
en cuenta que al descargar de una página conviene usar un sleep entre
descarga y descarga para no saturar el servicio y evitar problemas. Se debe
poder indicar por argumento cuantas imágenes generar y se deben asignar
nombres de archivo al azar de una lista de nombres de personas. Luego
se deben comprimir las imágenes, y generar un archivo con su suma de
verificación.
### ***descomprimir.sh***
Se debe poder indicar por argumento dos archivos (uno
con las imágenes comprimidas y otro con una suma de verificación). Si
ocurrió algún error se debe informar al usuario de lo contrario se procede
a descomprimir.
### ***procesar.sh***
Se deberán recortar las imágenes a una resolución de
512*512 con alguna utilidad como imagemagick. Solamente deben procesarse aquellas imágenes que tengan nombres de personas válidos. Entiéndase por nombres de personas válidos a cualquier combinación de palabras
que empiecen con un letra mayúscula y sigan por minúsculas.

### ***comprimir.sh***
Finalmente, luego de procesadas las imágenes, se debe:
- Generar un archivo con la lista de nombres de todas las imágenes.
- Generar un archivo con la lista de nombres válidos.
- Generar un archivo con el total de personas cuyo nombre finaliza con
la letra a.
- Por último, generar un archivo comprimido que incluya los archivos
generados en los items anteriores y todas las imágenes. El archivo
comprimido debe poder accederse desde fuera del contenedor.
### ***menu.sh***
Debe incluirse un menú para elegir cada una de las opciones anteriores.

## Built With

- Bash (Programación de scripts)
- Docker (Contenedorización)
- Git (Control de versiones)
- ImageMagick (Manipulación de imágenes)
- Flask (Framework web para generar y descargar imágenes a través de un servicio web)


## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

Programación bash
Manejo de control de versiones (Git)
Uso de contenedores (Docker)
Generación de documentación

### Installation

1. Clona este repositorio en tu máquina local:
```git clone https://github.com/Zeusven/TpEntorno.git```
2. Asegúrate de tener Docker instalado en tu sistema. Puedes encontrar instrucciones de instalación en la [documentación oficial de Docker](https://docs.docker.com/get-docker/).

## Usage

El proyecto consta de varios scripts que realizan diferentes tareas. A continuación se describen los scripts disponibles y cómo utilizarlos:

### generar.sh
Este script genera imágenes utilizando un servicio web. Acepta un argumento que indica la cantidad de imágenes a generar. Los nombres de archivo se asignan al azar utilizando una lista de nombres de personas. Las imágenes se comprimen y se genera un archivo con su suma de verificación.

bash
Copy code
./generar.sh <cantidad_de_imagenes>
descomprimir.sh
Este script descomprime las imágenes y realiza la verificación de integridad utilizando dos archivos de entrada: uno con las imágenes comprimidas y otro con la suma de verificación. Si ocurre algún error durante el proceso, se informará al usuario; de lo contrario, se procederá a descomprimir las imágenes.

bash
Copy code
./descomprimir.sh <archivo_imagenes_comprimidas> <archivo_suma_verificacion>
procesar.sh
Este script recorta las imágenes a una resolución de 512x512 utilizando la herramienta ImageMagick. Solo se procesarán las imágenes que tengan nombres de personas válidos. Los nombres de personas válidos son aquellas combinaciones de palabras que comienzan con una letra mayúscula y continúan con letras minúsculas.

bash
Copy code
./procesar.sh
comprimir.sh
Este script realiza varias acciones después de procesar las imágenes:

Genera un archivo con la lista de nombres de todas las imágenes.
Genera un archivo con la lista de nombres válidos.
Genera un archivo con el recuento total de personas cuyo nombre termina con la letra "a".
Por último, genera un archivo comprimido que incluye los archivos generados en los pasos anteriores, así como todas las imágenes procesadas. El archivo comprimido estará disponible fuera del contenedor.
bash
Copy code
./comprimir.sh
menu.sh
Este script presenta un menú de opciones para ejecutar cada uno de los scripts anteriores.

bash
Copy code
./menu.sh

## Roadmap

- Desarrollo del menú
- README.md
- Archivo generador de imagenes
-
-


## Authors

* **Troanes Federico Nahuel** - *Estudiante de la Tecnicatura en Inteligencia Artificial* - [Troanes Federico Nahuel](https://github.com/FefeTroanes) - **

## Acknowledgements

* [ShaanCoding](https://github.com/ShaanCoding/)
* [Othneil Drew](https://github.com/othneildrew/Best-README-Template)
* [ImgShields](https://shields.io/)
* [OpenAI GPT-3.5: Agradecemos a OpenAI y su modelo de lenguaje GPT-3.5, el cual ha brindado asistencia en la generación de contenido y respuestas durante el desarrollo de este proyecto.](https://chat.openai.com/)
