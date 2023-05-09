FROM openjdk:11-jdk-slim

# Copiar el archivo pom.xml y descargar las dependencias del proyecto
COPY pom.xml /app/
WORKDIR /app
RUN apt-get update && apt-get install -y maven && mvn dependency:resolve

# Copiar el resto del c�digo fuente y compilar la aplicaci�n
COPY src /app/src
RUN mvn package

# Exponer el puerto 9050
EXPOSE 9050

# Ejecutar la aplicaci�n
CMD ["java", "-jar", "/app/target/musicology-0.0.1-SNAPSHOT.jar"]