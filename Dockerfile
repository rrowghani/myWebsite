FROM tomcat:10.1.11
LABEL authors="rezar"
COPY ./target/main.war ${CATALINA_HOME}/webapps/ROOT.war
RUN sed -i 's/port="8080"/port="80"/' ${CATALINA_HOME}/conf/server.xml
CMD ["catalina.sh", "run"]