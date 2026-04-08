# Use lightweight Java runtime
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR file (after build)
COPY target/*.jar app.jar

# Expose port (Spring Boot default)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
