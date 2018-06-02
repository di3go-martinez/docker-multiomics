#!/bin/bash

prod=multiomics-0.0.2-beta.11
tag=$prod
port=3838
mode=prod
if [ "$1" == "--dev" ];then
  tag=dev
  port=13838
  mode=dev
  docker stop multiomics-$mode
fi

  #-v $(readlink -f shinylog/):/var/log/shiny-server/ \
  #-v $(readlink -f multiomics/src/):/srv/shiny-server/ \


docker run --rm -p $port:3838 \
  --detach \
  --name multiomics-$mode \
  --cpus=2 \
   multiomics:$tag 
