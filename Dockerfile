FROM openjdk:9
VOLUME /tmp
COPY target/spring-boot-gcp-demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]