FROM openjdk:17-jdk
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
EXPOSE 8083
FROM mysql:8
ENV MYSQL_ROOT_PASSWORD=root
COPY ./main.sql /docker-entrypoint-initdb.d/

