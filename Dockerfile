#Start with a base image containing Java runtime
FROM openjdk:11-sl

# Add Maintainer Info
LABEL maintainer="Karthik Viswanathan <karthik.androidz@gmail.com>"

# The application's jar file
ARG JAR_FILE

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Execute the application
ENTRYPOINT ["java","-jar","/app.jar"]
