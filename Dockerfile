FROM openjdk:17
WORKDIR /app
COPY target/todoapp-1.0-SNAPSHOT.war /app/todoapp.war
EXPOSE 8080
CMD ["java", "-jar", "todoapp.war"]