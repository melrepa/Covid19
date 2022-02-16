#!/bin/sh
echo "Descargar la base de datos de Covid en Mexico y limpia los datos restringiendo la informacion a casos de mujeres en Sonora."
echo "Correr dentro de un contenedor de docker."
echo "Detenga ahora si no se encuentra corriendo en el contenedor de docker."
read holder
echo "Descargando datos al contenedor."
curl -L -O http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
echo "Descomprimir datos."
unzip datos_abiertos_covid19.zip
echo "Comienza la limpieza de datos."
read holder
echo "Tomando solo datos de Sonora."
csvgrep -c ENTIDAD_RES -r "26" 220215COVID19MEXICO.csv > datossonora.csv
echo "Tomando solo datos de mujeres."
csvgrep -c SEXO -r "1" datossonora.csv > mujeressonora.csv
echo "Eliminar columnas no necesarias."
csvcut -C 1,2,3,4,5,8,9,11,12,13,17,19,20,32,33,34,35,36,37,38,39,40 mujeressonora.csv > covidmujerson.csv
echo "Fin de limpieza de datos."
rm datossonora.csv mujeressonora.csv

