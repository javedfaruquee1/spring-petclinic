FROM openjdk:11-jdk-slim
VOLUME /tmp
EXPOSE 8080
ADD target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
