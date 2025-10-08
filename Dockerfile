# ============================
# 1️⃣ Build Stage
# ============================
FROM eclipse-temurin:21-jdk AS builder

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY . .

# Ensure Maven wrapper has execute permission
RUN chmod +x mvnw

# Build the application (skip tests for faster build)
RUN ./mvnw clean package -DskipTests


# ============================
# 2️⃣ Runtime Stage
# ============================
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /app

# Create a non-root user for security
RUN useradd -ms /bin/bash springuser

# Copy built JAR file from build stage
COPY --from=builder /app/target/*.jar app.jar

# Create upload directories
RUN mkdir -p /app/uploads/documents /app/uploads/images /app/uploads/music

# Set permissions
RUN chown -R springuser:springuser /app
USER springuser

# Expose the same port as in application.properties
EXPOSE 8080

# Environment variables (you can override them at runtime)
ENV SPRING_PROFILES_ACTIVE=prod
ENV JAVA_OPTS="-Xms256m -Xmx1024m"

# Volume for uploaded files (so they persist)
VOLUME ["/app/uploads"]

# Run the Spring Boot application
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
