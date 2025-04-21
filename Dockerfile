# Step 1: Build the WAR file using Maven
FROM maven:3.9.3-eclipse-temurin-17 AS builder

WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Step 2: Deploy the WAR into a clean Tomcat image
FROM tomcat:9.0-jdk17

# Disable Tomcat shutdown port to prevent accidental shutdowns
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml

# Clean the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR into Tomcat's ROOT context
COPY --from=builder /app/target/springsecurity.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080
