#Only need a JVM
FROM java:jre-8
MAINTAINER Jérémy DELVINQUIER

#Add built .jar file to the image
RUN mkdir app
ADD target/eureka-service-0.0.1-SNAPSHOT.jar /app/
#Listening on port 8761 - Any value but check port matching
EXPOSE 8761

#Run the application contained in .jar
CMD ["java","-jar", "/app/eureka-service-0.0.1-SNAPSHOT.jar"]
