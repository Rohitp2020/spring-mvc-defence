# Use Maven to build the WAR first
FROM maven:3.9.3-eclipse-temurin-17 AS builder

WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Now take the WAR and drop it into Tomcat
FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=builder /app/target/springsecurity.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
