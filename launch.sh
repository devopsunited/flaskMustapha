#! /bin/bash

#Ecrire un script launch.sh qui automatise le lancement de ce projet
#construire image alpine/python de l'appli
cd flask_app
#build de l'img python/alpine appli
docker build . -t app

#const image srvr nginx
cd ../nginx
#build nginx
docker build . -t my-nginx
#lancer l'appli
docker-compose up

