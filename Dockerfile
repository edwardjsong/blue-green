FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY  build/libs/com.edwardsong.bluegreen.app-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]