#Only need a JVM
FROM java:jre-8
MAINTAINER Jérémy DELVINQUIER

#Add built .jar file to the image
RUN mkdir app
ADD target/hystrix-service-0.0.1-SNAPSHOT.jar /app/
#Listening on port 7979 - Any value but check port matching
EXPOSE 7979

#Run the application contained in .jar
CMD ["java","-jar", "/app/hystrix-service-0.0.1-SNAPSHOT.jar"]
