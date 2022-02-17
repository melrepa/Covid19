# Análisis de datos de Covid-19

El objtevio de esta página es presentar los resultados de la actividad **Descargando y analizando los datos de COVID** perteneciente al curso **Herramientas de productividad para Ciencia de Datos** de la Univerdad de Sonora. 
El objetivo del ejercicio es determinar cuál es los factores de riesgo más comunes para los casos pediátricos reportados en la base de datos de la información proporcionada por la Dirección General de Epidemiología.
Dentro de un contenedor de Docker se corrió un script de la línea de comando de UNIX que permite considerar solo los casos del estado de Sonora de pacientes pediátricos.
Posteriormente, se utilizó un Jupyter Notebook dentro de un env de Conda en Visual Studio Code para determinar por medio de la libreria Pandas y SeaBorn los factores de riesgo que se presenta con mayor frecuencia en los pacientes menores de 18 años.

## Metodología

Por medio de un [Dockerfile](https://github.com/melrepa/Covid19/blob/main/analisiscovid.dockerfile) se baja un contenedor de ubuntu que incluye un [script](https://github.com/melrepa/Covid19/blob/main/covidscript.sh) que hace lo siguiente:

- Descarga la base de datos de la página de [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Limpia los datos dejando solo lo referente a mujeres de Sonora.
- Genera un archivo con el nombre covidmujerson.csv listo para ser analizado.

La base de datos a ser analizada se copió al repositorio por medio del siguiente comando:

<code>docker cp analisiscovid:/root/covidmujerson.csv .</code>

## Resultados

