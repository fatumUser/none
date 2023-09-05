FROM openjdk:17-jdk
MAINTAINER baeldung.com
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
RUN apt-get update && apt-get install -y mysql-client
ENV MYSQL_ROOT_PASSWORD=root
COPY ./main.sql /docker-entrypoit-initdb.d/
EXPOSE 9090
