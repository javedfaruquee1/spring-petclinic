FROM openjdk:23-ea-30-oraclelinux8
VOLUME /tmp
EXPOSE 8080
ADD target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
