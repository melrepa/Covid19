# Análisis de datos de Covid-19

<p>El objetivo de esta página es presentar los resultados de la actividad <strong>Descargando y analizando los datos de COVID </strong> perteneciente al curso <strong>Herramientas de productividad para Ciencia de Datos </strong> de la Univerdad de Sonora. </p>
<p>La actividad tiene como objetivo determinar cuál es el factor de riesgo mas común en las mujeres de Sonora reportados en la base de datos de la información proporcionada por la Dirección General de Epidemiología. </p>
En un contenedor de Docker se corrió un script de la línea de comando de UNIX que permite considerar sólo los casos de mujeres del estado de Sonora.

## Metodología

Por medio de un [Dockerfile](https://github.com/melrepa/Covid19/blob/main/DIY/analisiscovid.dockerfile) se baja un contenedor de ubuntu que incluye un [script](https://github.com/melrepa/Covid19/blob/main/DIY/covidscript.sh) que hace lo siguiente:

- Descargar las actualizaciones y programas necesarios para la obtención y limpieza de los datos.
- Descarga la base de datos de la página de [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Limpia los datos dejando solo lo referente a mujeres de Sonora.
- Genera un [archivo](https://github.com/melrepa/Covid19/blob/main/covidmujerson.csv) con el nombre covidmujerson.csv listo para ser analizado.

La base de datos a ser analizada se copió al repositorio por medio del siguiente comando:

``` 
    docker cp analisiscovid:/root/covidmujerson.csv .
``` 

## Resultados

*Próximamente*

## Implementación
Para poder obtener los datos utilizados en esta actividad es necesario descargar el contenido de la carpeta [**DIY/**](https://github.com/melrepa/Covid19/tree/main/DIY) en la cual se encuentra un **Dockerfile** y un **script de shell.** 

Es necesario que ambos archivos estén en una misma dirección. A continuación se crea un contenedor usando el **Dockerfile.**
```   
    $ docker build -t username/imagen .
    $ docker run -it --name name username/imagen
```
El Dockerfile copiará el script de shell dentro del nuevo contenedor basado en ubuntu, este script automaticamente relizará las acciones descritas en la metodología.
