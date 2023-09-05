FROM openjdk:17-jdk
FROM mysql:8
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
ENV MYSQL_ROOT_PASSWORD=root
COPY ./main.sql /docker-entrypoint-initdb.d/
EXPOSE 8083

