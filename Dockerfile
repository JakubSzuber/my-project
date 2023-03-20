FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]


# FROM adoptopenjdk:11-jdk-hotspot

# EXPOSE 8080

# WORKDIR /app

# COPY . .

# RUN ./gradlew build

# CMD ["java", "-jar", "build/libs/myapp.jar"]
