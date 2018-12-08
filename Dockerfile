# frist dockerfile
FROM tomcat:8-jre8 
# FROM scratch
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
COPY hello-world.war /usr/local/tomcat/webapps/
RUN chmod o+w /usr/local/tomcat/webapps
RUN cat /usr/local/tomcat/webapps/manager/META-INF/context.xml
RUN ls /usr/local/tomcat/conf -all
