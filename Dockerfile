FROM amazoncorretto:11-alpine-jdk
COPY musicology/target/musicology-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


## Copiar el archivo pom.xml y descargar las dependencias del proyecto
#COPY pom.xml /app/
#WORKDIR /app
#RUN apt-get update && apt-get install -y maven && mvn dependency:resolve
#
#ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/musicologydb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC
#ENV SPRING_DATASOURCE_USERNAME=root
#ENV SPRING_DATASOURCE_PASSWORD=Mus1c0LoGy
#
## Copiar el resto del c�digo fuente y compilar la aplicaci�n
#COPY src /app/src
#RUN mvn package
#
## Exponer el puerto 9050
#EXPOSE 9050
#
## Ejecutar la aplicaci�n
#CMD ["java", "-jar", "/app/target/musicology-0.0.1-SNAPSHOT.jar"]
