# we are extending everything from tomcat:8.0 image ...
FROM tomcat:9.0
MAINTAINER petclinic
RUN rm -rf /usr/local/tomcat/webapps/*
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY ./target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
CMD ["catalina.sh","run"]
