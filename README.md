<br/>
<p align="center">
  <a href="https://github.com//https://github.com/Zeusven/TpEntorno">
    <img src="https://campusv.fceia.unr.edu.ar/pluginfile.php/149791/course/section/5656/Banner%20Entorno.png" alt="Logo" height="80">
  </a>

  <h3 align="center">Entorno de programación - Procesador de imágenes</h3>

  <p align="center">
    Este programa es el resultado de un trabajo práctico para la materia "Entornos de desarrollo" en el cual debimos diseñar y escribir un programa para procesar un lote de imágenes.
    <br/>
    <br/>
    <a href="https://github.com//https://github.com/Zeusven/TpEntorno"><strong>Explore the docs »</strong></a>
    <br/>
    <br/>
    <a href="https://github.com//https://github.com/Zeusven/TpEntorno/issues">Report Bug</a>
    .
    <a href="https://github.com//https://github.com/Zeusven/TpEntorno/issues">Request Feature</a>
  </p>
</p>

![Contributors](https://img.shields.io/github/contributors//https://github.com/Zeusven/TpEntorno?color=dark-green) ![Forks](https://img.shields.io/github/forks//https://github.com/Zeusven/TpEntorno?style=social) ![Stargazers](https://img.shields.io/github/stars//https://github.com/Zeusven/TpEntorno?style=social) ![Issues](https://img.shields.io/github/issues//https://github.com/Zeusven/TpEntorno) ![License](https://img.shields.io/github/license//https://github.com/Zeusven/TpEntorno)

## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Instalación](#instalación)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
  - [Creating A Pull Request](#creating-a-pull-request)
- [Authors](#authors)
- [Acknowledgements](#acknowledgements)

## About The Project

![Screen Shot](images/screenshot.png)

Introducción
Descripción
El objetivo del trabajo práctico es diseñar y escribir un programa para procesar un lote de imágenes. Este programa consta de tres partes principales:
1. En primer lugar se debe poder generar y descargar las imágenes a través
de un servicio web.
2. Luego se debe aplicar una transformación solamente a las imágenes de
personas.
3. Finalmente se debe generar un archivo comprimido con las imágenes
procesadas.
Todo el trabajo debe ser realizado bajo control de versiones, con participación
de todos los integrantes y debe ejecutarse dentro de un contenedor.
Pautas generales
• El trabajo práctico deberá ser realizado en grupos de dos o tres estudiantes.
• Deberá informarse al docente de la comisión cómo está conformado su
equipo de trabajo vía mail.
• Todos los integrantes deben conocer todos los aspectos del trabajo entregado.
• Se admite una única entrega final, es por ello que solicitamos revisen
muy bien las funcionalidades previamente a la entrega formal, que debe
comunicarse con un mail al docente de la comisión.
Aspectos evaluativos
• Programación bash.
• Manejo de control de versiones.
• Uso de contenedores.
• Generación de documentación.
Enunciado
El trabajo consiste en generar un contenedor que al ejecutarse presente un menú
de opciones para procesar un lote de imágenes. Deberán editar un Dockerfile
y construir una imagen.
Las imágenes a analizar deben ser descargadas o generadas desde internet y
deben almacenarse dentro de un contenedor para su posterior análisis. Luego
del análisis, deberá generarse un archivo disponible fuera del contenedor.
1
Tanto los scripts, como el Dockerfile, deben estar en el repositorio gitlab o
github que creen para realizar el desarrollo en equipo.
Deberán trabajar en el repositorio manteniendo la prolijidad y las buenas prácticas de git. Una estrategia muy recomendable es realizar una rama por cada
ejercicio e ir integrando a la rama principal a medida que los scripts que resuelven
cada ejercicio estén listos. Todos los integrantes deben realizar commits en el
repositorio.
En ese mismo repositorio debe estar la documentación suficiente para comprender
cómo desplegar el contenedor y ejecutar la aplicación, con algunas capturas
de ejecución o lo que consideren logre explicitar el funcionamiento y visualizar
resultados. Debe ser utilizando un archivo README.md el cual estará presente
cuando se accede al repositorio en gitlab o github.
Scripts
Se deberán programar los siguientes scripts:
• generar.sh: Genera imágenes utilizando algún servicios web. Tener
en cuenta que al descargar de una página conviene usar un sleep entre
descarga y descarga para no saturar el servicio y evitar problemas. Se debe
poder indicar por argumento cuantas imágenes generar y se deben asignar
nombres de archivo al azar de una lista de nombres de personas. Luego
se deben comprimir las imágenes, y generar un archivo con su suma de
verificación.
• descomprimir.sh: Se debe poder indicar por argumento dos archivos (uno
con las imágenes comprimidas y otro con una suma de verificación). Si
ocurrió algún error se debe informar al usuario de lo contrario se procede
a descomprimir.
• procesar.sh: Se deberán recortar las imágenes a una resolución de
512*512 con alguna utilidad como imagemagick. Solamente deben procesarse aquellas imágenes que tengan nombres de personas válidos. Entiéndase por nombres de personas válidos a cualquier combinación de palabras
que empiecen con un letra mayúscula y sigan por minúsculas.
• comprimir.sh: Finalmente, luego de procesadas las imágenes, se debe:
– generar un archivo con la lista de nombres de todas las imágenes.
– generar un archivo con la lista de nombres válidos.
– generar un archivo con el total de personas cuyo nombre finaliza con
la letra a.
– por último, generar un archivo comprimido que incluya los archivos
generados en los items anteriores y todas las imágenes. El archivo
comprimido debe poder accederse desde fuera del contenedor.
• menu.sh: Debe incluirse un menú para elegir cada una de las opciones
anteriores.

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

## Instalación

1. Clona este repositorio en tu máquina local:
```git clone <URL_DEL_REPOSITORIO>```
2. Asegúrate de tener Docker instalado en tu sistema. Puedes encontrar instrucciones de instalación en la [documentación oficial de Docker](https://docs.docker.com/get-docker/).

## Usage

El proyecto consta de varios scripts que realizan diferentes tareas. A continuación se describen los scripts disponibles y cómo utilizarlos:

generar.sh
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

- README.md
- Desarrollo del menú
-
-
-


## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com//https://github.com/Zeusven/TpEntorno/issues/new) to discuss it, or directly create a pull request after you edit the *README.md* file with necessary changes.
* Please make sure you check your spelling and grammar.
* Create individual PR for each suggestion.
* Please also read through the [Code Of Conduct](https://github.com//https://github.com/Zeusven/TpEntorno/blob/main/CODE_OF_CONDUCT.md) before posting your first idea as well.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Authors

* **Leonardi Pablo** - *Estudiante de la Tecnicatura en Inteligencia Artificial* - [Leonardi Pablo](https://github.com/Zeusven) - **
* **Postiglione Anna** - *Estudiante de la Tecnicatura en Inteligencia Artificial* - [Postiglione Anna](https://github.com/annapostiglione) - **
* **Troanes Federico Nahuel** - *Estudiante de la Tecnicatura en Inteligencia Artificial* - [Troanes Federico Nahuel](https://github.com/FefeTroanes) - **

## Acknowledgements

* [ShaanCoding](https://github.com/ShaanCoding/)
* [Othneil Drew](https://github.com/othneildrew/Best-README-Template)
* [ImgShields](https://shields.io/)
* [OpenAI GPT-3.5: Agradecemos a OpenAI y su modelo de lenguaje GPT-3.5, el cual ha brindado asistencia en la generación de contenido y respuestas durante el desarrollo de este proyecto.](https://chat.openai.com/)
