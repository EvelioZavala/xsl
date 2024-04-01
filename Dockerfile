FROM tomcat:10-jdk11-corretto
ADD ./target/xsl-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]