#!/bin/bash


(cd multiomics && git pull)
docker build -t multiomics:dev .

./run.sh --dev
