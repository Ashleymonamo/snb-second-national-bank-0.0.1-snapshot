# Use OpenJDK 21 as the base image
FROM openjdk:21

# Set the working directory in the container
WORKDIR /app

# Add the packaged Spring Boot application JAR file to the container
ADD target/*.jar snb-second-national-bank-0.0.1-snapshot.jar

# Specify the entry point for the container
ENTRYPOINT ["java", "-jar", "snb-second-national-bank-0.0.1-snapshot.jar"]
