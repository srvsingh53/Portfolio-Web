# Use an official Java runtime as base image
FROM eclipse-temurin:21-jdk

# Set working directory inside container
WORKDIR /app

# Copy everything into the image
COPY . .

# Build the project using the Maven wrapper
RUN ./mvnw clean package

# Run the JAR (replace name if different)
CMD ["java", "-jar", "target/portfolio-0.0.1-SNAPSHOT.jar"]
