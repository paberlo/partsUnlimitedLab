FROM openjdk:8-jre

MAINTAINER pablo.bermejo@uclm.es

RUN mkdir -p usr/local/app/

COPY ../../builds/ordering*.* usr/local/app/
COPY run.sh usar/local/app/run.sh

#Not necessary when runing in local, but in swarm mode or production,  override on Tomcat7 production system by placing
# an application.properties file in the root Tomcat7 directory, so that the ordering service knows the host ip.
COPY application.properties application.properties

EXPOSE 8080

#CMD ["ls", "-l", "usr/local/app"]
#CMD ["sh", "usr/local/app/run.sh"]
ENTRYPOINT sh usr/local/app/run.sh