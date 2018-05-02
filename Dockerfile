FROM openjdk:9
VOLUME /tmp
RUN mkdir /work
COPY . /work
WORKDIR /work
#RUN /work/gradlew build
RUN mv /work/target/spring-boot-gcp-demo-0.0.1-SNAPSHOT.jar  /work/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/work/app.jar"]


#FROM openjdk:9
#VOLUME /tmp
#COPY target/spring-boot-gcp-demo-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]