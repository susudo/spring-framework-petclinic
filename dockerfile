# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0.51-jre8-alpine
MAINTAINER petclinic
RUN rm -rf /usr/local/tomcat/webapps/*

# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY /var/lib/jenkins/workspace/petclinic2/target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
EXPOSE 8080
CMD ["catalina.sh","run"]
