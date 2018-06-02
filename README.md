# docker-multiomics
Receta para correr multiomics en un container Docker

Descripción.
build-and-run-dev.sh
	construye la imagen a partir del branch "dev" y corre el comando run con el parÃmetro "--dev"
run.sh
	ejecuta el container de multiomics. tiene dos modos:
		prod > corre la Ãºltima versiÃ³n productiva, indicada en la variable prod dentro del mismo script. DEFAULT
		dev  > corre el container etiquetado como multiomics:dev. Se debe indicar el parÃ¡metro --dev
