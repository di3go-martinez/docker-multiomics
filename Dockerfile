from rocker/shiny

#dependencias R que requieren soporte de libs del SO
run apt-get -y update && \
    apt-get -y install libxml2-dev libcurl4-gnutls-dev libssl-dev

RUN groupadd -r bioplat  && useradd --no-log-init -r -g bioplat bioplat

copy multiomics /multiomics/
workdir /multiomics/

run Rscript src/1-installation/dependencies_multiomics.R

run rm -fr /srv/shiny-server/*

#deploy multiomics shiny app
#requiere estas dependencias en un directorio parent ..
copy multiomics/src/3-do /srv/shiny-server/multiomics/3-do 
copy multiomics/src/survival.entities /srv/shiny-server/multiomics/survival.entities
copy multiomics/src/survival.utils  /srv/shiny-server/multiomics/survival.utils
copy multiomics/src/4-shiny /srv/shiny-server/multiomics/multiomics

copy etc/shiny-server/shiny-server.conf /etc/shiny-server/

#necesario poruqe sino falla la creación de "bookmarks" (commentar y ver el log llegado el caso)
run chown -Rf shiny:shiny /var/lib/shiny-server

user shiny

#start server shiny segun imagen original
