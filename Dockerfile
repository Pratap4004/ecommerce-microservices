FROM eclipse-temurin:17-jre

WORKDIR /app

ARG SERVICE

COPY ${SERVICE}/target/${SERVICE}-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
