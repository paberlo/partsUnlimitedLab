#!/bin/bash
#al lanzar con docker run, mongo es el nombre del link creado entre db y order
#al lanzar con docker stack, el enlace se indica con el nombre del servicio, que es db

while ! curl http://mongo:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - it seems mongo server is connected successfully"

java -jar usr/local/app/ordering-service-0.1.0.jar
 #java -Dspring.data.mongodb.uri=mongodb://mongo -jar -Dserver.port=8080 /usr/local/app/*.jar
 #java -Dspring.data.mongodb.host=10.0.0.3 -jar  /usr/local/app/*.jar #no funciona aun poniendo la ip correcta de la db!

