FROM tomcat:10.1.20-jdk17-temurin-jammy

ADD ./target/xsl-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD chmod +x /usr/local/tomcat/bin/catalina.sh

CMD ["catalina.sh", "run"]