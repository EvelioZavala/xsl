FROM maven AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM tomee:9.0.0-M8-jre17-Temurin-ubuntu-webprofile

ADD ./target/xsl-1.0.war /usr/local/tomee/webapps/app.war

EXPOSE 80