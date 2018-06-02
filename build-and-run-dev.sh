#!/bin/bash


#FIXME manejarlo con el submódulo ahora
(cd multiomics && git pull)
docker build -t multiomics:dev .

./run.sh --dev
