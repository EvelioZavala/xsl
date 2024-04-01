FROM tomcat:10-jdk11-corretto
ADD ./target/xsl-1.0.war /usr/local/tomcat/webapps/
EXPOSE 80
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]