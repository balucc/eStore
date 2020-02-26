FROM tomcat:7
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD ./target/eStore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

