From tomcat:7
MAINTAINER Muralidhara Reddy
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 9090
CMD ["catalina.sh","run"]





