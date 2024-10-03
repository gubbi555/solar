# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jdk11-openjdk

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file to the Tomcat webapps directory
COPY target/simpleweb.war /usr/local/tomcat/webapps/

# Expose port 8080 for the web service
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
