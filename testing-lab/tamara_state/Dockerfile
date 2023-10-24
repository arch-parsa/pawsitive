FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY ./build/libs/tamara_state-1.0.0-SNAPSHOT.jar ./

EXPOSE 8585

ENTRYPOINT ["java", "-jar", "tamara_state-1.0.0-SNAPSHOT.jar"]
