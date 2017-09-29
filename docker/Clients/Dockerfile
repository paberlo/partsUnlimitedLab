FROM tomcat:7-jre8

MAINTAINER pablo.bermejo@uclm.es

COPY drop/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

#ENTRYPOINT catalina.sh run
#When heroku deploys this image, it needs a CMD command, it does not accept ENTRYPOINT
CMD ["catalina.sh", "run"]
