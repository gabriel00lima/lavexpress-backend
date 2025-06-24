# Etapa de build
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copiar arquivos de dependência primeiro (cache layer)
COPY pom.xml .
COPY src ./src

# Build da aplicação
RUN mvn clean package -DskipTests -Dmaven.test.skip=true

# Etapa de runtime
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copiar o JAR da etapa de build
COPY --from=build /app/target/lavexpress-0.0.1-SNAPSHOT.jar app.jar

# Configurar variáveis de ambiente padrão
ENV SPRING_PROFILES_ACTIVE=prod
ENV PORT=8080

# Expor a porta
EXPOSE ${PORT}

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "-Dserver.port=${PORT}", "app.jar"]