# Use the official Maven image to build the application
FROM maven:3.6.3-jdk-8 AS build
COPY pom.xml /app/
COPY src /app/src/
WORKDIR /app
RUN mvn clean package

# Use the official Tomcat image to run the application
FROM tomcat:9.0
COPY --from=build /app/target/hellotomcat.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

