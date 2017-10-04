FROM tomcat:7-jre8

MAINTAINER pablo.bermejo@uclm.es

COPY drop/*.war /usr/local/tomcat/webapps/

#works in local or swarm, but in heroku you cant choose the port of the works
EXPOSE 8080

#ENV JAVA_OPTIONS 

#ENTRYPOINT catalina.sh run
#When heroku deploys this image, it needs a CMD command, it does not accept ENTRYPOINT
CMD ["catalina.sh", "-Dserver.port=$PORT ", "run"]
