# Use official Tomcat with JDK 17
FROM tomcat:9.0-jdk17

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY target/springsecurity.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat listens on (Render maps this automatically)
EXPOSE 8080
