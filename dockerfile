# Use the official Ubuntu image as the base image
FROM tomcat:latest

# Install Apache and other required utilities
RUN apt-get update && \
    apt-get install -y wget openjdk-11-jdk && \
    apt-get clean

# Set the working directory to /var/www/html (default for Apache)
WORKDIR /var/www/html

# Copy the WAR file from the Jenkins workspace to the Apache web server directory
COPY target/website-v2.war /var/www/html/

# Expose the default HTTP port (80)
EXPOSE 80

# Start the Apache server
CMD ["apachectl", "-D", "FOREGROUND"]
