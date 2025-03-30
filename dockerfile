# Use official Tomcat image from Docker Hub
FROM tomcat:9-jdk11-openjdk

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_BASE /usr/local/tomcat

# Copy the WAR file into the Tomcat webapps directory
# Make sure the path to your WAR file is correct (adjust the path if necessary)
COPY target/website-v2.war $CATALINA_HOME/webapps/website-v2.war

# Expose the default Tomcat port
EXPOSE 8082

# Start Tomcat server in foreground mode
CMD ["catalina.sh", "run"]
