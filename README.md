# musicology
Musicology

[//]: # (Para la BBDD)
[//]: # (Crear Archivo Dockerfile:)
FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=mydb
COPY ./mydb.sql /docker-entrypoint-initdb.d/

[//]: # (Crear mydb.sql:)

[//]: # (Crear contenedor:)
docker build -t my-mysql .

[//]: # (Lanzar contenedor)
docker run --name my-mysql-container -p 3306:3306 -d my-mysql

[//]: # (Para la aplicación Java)
docker build -t musicology .
docker run --name musicology-container -p 9050:9050 musicology

