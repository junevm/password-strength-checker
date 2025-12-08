# Multi-stage build for Password Strength Checker

# Stage 1: Build stage
FROM maven:3.9.5-eclipse-temurin-11 AS builder

WORKDIR /app

# Copy pom.xml first for better layer caching
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Runtime stage
FROM eclipse-temurin:11-jre-alpine

WORKDIR /app

# Copy the built JAR from builder stage
COPY --from=builder /app/target/password-strength-checker-1.0.0.jar /app/password-strength-checker.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app/password-strength-checker.jar"]
