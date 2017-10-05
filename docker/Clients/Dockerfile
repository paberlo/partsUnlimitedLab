FROM tomcat:7-jre8

MAINTAINER pablo.bermejo@uclm.es

COPY drop/*.* /usr/local/tomcat/webapps/

#works in local or swarm, but in heroku you cant choose the port of the works
EXPOSE 8080


#ENTRYPOINT catalina.sh run
#When heroku deploys this image, it needs a CMD command, it does not accept ENTRYPOINT
#CMD ["catalina.sh", "run"]
CMD ["java","-jar","/usr/local/tomcat/webapps/webapp-runner-8.5.5.0.jar","--port",$PORT,"/usr/local/tomcat/webapps/*.war" ]
