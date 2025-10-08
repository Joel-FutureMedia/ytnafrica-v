# ============================
# 1️⃣ Build Stage
# ============================
FROM eclipse-temurin:21-jdk AS builder

# Set working directory inside container
WORKDIR /app

# Copy Maven/Gradle config and source files
COPY . .

# If you are using Maven:
RUN ./mvnw clean package -DskipTests

# If using Gradle instead, comment the Maven line and uncomment this:
# RUN ./gradlew bootJar -x test


# ============================
# 2️⃣ Runtime Stage
# ============================
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /app

# Create non-root user for security
RUN useradd -ms /bin/bash springuser

# Copy built jar from build stage
COPY --from=builder /app/target/*.jar app.jar

# Give permissions
RUN chown -R springuser:springuser /app
USER springuser

# Expose app port (matches your application.properties)
EXPOSE 8080

# Environment variables for your app
ENV SPRING_PROFILES_ACTIVE=prod
ENV JAVA_OPTS="-Xms256m -Xmx1024m"

# File upload directories
RUN mkdir -p /app/uploads/documents /app/uploads/images /app/uploads/music
VOLUME ["/app/uploads"]

# Run the Spring Boot app
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
