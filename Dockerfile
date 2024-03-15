#start with a base image containing java runtime
FROM openjdk:17-jdk-slim

#Information about who maintains the page
MAINTAINER sahilkaul52@gmail.com

#Adding the application's jar to the image(copy src  location-within-docker image)
COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar

#executing the application
ENTRYPOINT ["java","-jar","accounts-0.0.1-SNAPSHOT.jar"]

