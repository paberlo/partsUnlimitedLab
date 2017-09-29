FROM openjdk:8-jre

MAINTAINER pablo.bermejo@uclm.es

RUN mkdir -p usr/local/app/

COPY drop/*.jar usr/local/app/
COPY drop/run.sh usr/local/app/run.sh

#Not necessary when runing in local, but in swarm mode or production,  override on Tomcat7 production system by placing
# an application.properties file in the root Tomcat7 directory, so that the ordering service knows the host ip.
COPY drop/application.properties application.properties

EXPOSE 8080

#When heroku deploys this image, it needs a CMD command, it does not accept ENTRYPOINT
#ENTRYPOINT sh usr/local/app/run.sh
CMD ["sh", "usr/local/app/run.sh"]