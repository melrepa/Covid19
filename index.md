# Análisis de datos de Covid-19

El objtevio de esta página es presentar los resultados de la actividad **Descargando y analizando los datos de COVID** perteneciente al curso **Herramientas de productividad para Ciencia de Datos** de la Univerdad de Sonora. 
La actividad tiene como objetivo determinar cuál es el factor de riesgo mas común en las mujeres de Sonora reportados en la base de datos de la información proporcionada por la Dirección General de Epidemiología.
En un contenedor de Docker se corrió un script de la línea de comando de UNIX que permite considerar sólo los casos de mujeres del estado de Sonora.

## Metodología

Por medio de un [Dockerfile](https://github.com/melrepa/Covid19/blob/main/analisiscovid.dockerfile) se baja un contenedor de ubuntu que incluye un [script](https://github.com/melrepa/Covid19/blob/main/covidscript.sh) que hace lo siguiente:

- Descarga la base de datos de la página de [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Limpia los datos dejando solo lo referente a mujeres de Sonora.
- Genera un [archivo](https://github.com/melrepa/Covid19/blob/main/covidmujerson.csv) con el nombre covidmujerson.csv listo para ser analizado.

La base de datos a ser analizada se copió al repositorio por medio del siguiente comando:

<code>docker cp analisiscovid:/root/covidmujerson.csv .</code>

## Resultados

