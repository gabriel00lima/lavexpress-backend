# Etapa de build
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests -Dmaven.test.skip=true

# Etapa de runtime
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Permitir o uso de host.docker.internal em ambientes Linux (como servidores ou WSL)
RUN echo "127.0.0.1 host.docker.internal" >> /etc/hosts

COPY --from=build /app/target/lavexpress-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 1000
ENTRYPOINT ["java", "-jar", "app.jar"]
