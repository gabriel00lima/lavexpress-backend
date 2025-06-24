# Etapa de build
FROM maven:3.9.6-eclipse-temurin-17 as build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests=true -Dmaven.test.skip=true

# Etapa de runtime
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/lavexpress-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "app.jar"]
