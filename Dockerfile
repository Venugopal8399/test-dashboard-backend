FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN ./mvnw -q -DskipTests package
CMD ["java","-jar","target/dashboard-api-0.0.1-SNAPSHOT.jar"]
