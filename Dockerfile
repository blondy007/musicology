FROM openjdk:11-jdk-slim

# Copiar el archivo pom.xml y descargar las dependencias del proyecto
COPY pom.xml /app/
WORKDIR /app
RUN apt-get update && apt-get install -y maven && mvn dependency:resolve

ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/musicologydb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=Mus1c0LoGy

# Copiar el resto del código fuente y compilar la aplicación
COPY src /app/src
RUN mvn package

# Exponer el puerto 9050
EXPOSE 9050

# Ejecutar la aplicación
CMD ["java", "-jar", "/app/target/musicology-0.0.1-SNAPSHOT.jar"]
