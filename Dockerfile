FROM openjdk:11
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar
ADD https://github.com/HariharasudhanU2002/Docker/blob/main/docker_part4/example5/readme.md /app
LABEL version=11 description="Devsecops Project Image name hari1"
EXPOSE 8880
CMD ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
