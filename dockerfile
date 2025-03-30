# Use the official Tomcat image from Docker Hub
FROM tomcat:9-jdk11

# Set environment variables (optional)
ENV TOMCAT_HOME /usr/local/tomcat

# Copy your WAR file into Tomcat's webapps directory
COPY target/website-v2.war ${TOMCAT_HOME}/webapps/

# Expose Tomcat's default HTTP port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
