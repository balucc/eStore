FROM tomcat:7
ADD eStore-0.0.1-SNAPSHOT.war /var/lib/tomcat7/webapps
CMD ["catalina.sh", "run"]

