From tomcat:latest

# Maintainer
MAINTAINER "zakabubu96"

# copy war file on to container
COPY ./java-tomcat-maven-example.war /usr/local/tomcat/webapps
