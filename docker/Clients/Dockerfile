FROM tomcat:7-jre8

MAINTAINER pablo.bermejo@uclm.es

COPY ../../builds/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

ENTRYPOINT catalina.sh run
