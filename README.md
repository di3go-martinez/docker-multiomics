# docker-multiomics
Receta para correr multiomics en un container Docker

Descripción de archivos

- build-and-run-dev.sh
	- construye la imagen a partir del branch "dev" y corre el comando run con el parámetro "--dev"
	
	
- run.sh
	- ejecuta el container de multiomics. tiene dos modos:
		- prod > corre la última versión productiva, indicada en la variable prod dentro del mismo script. modo por DEFAULT
		- dev  > corre el container etiquetado como multiomics:dev. Se debe indicar el parámetro --dev
