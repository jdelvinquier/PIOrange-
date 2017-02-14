#Only need a JVM
FROM java:jre-8
MAINTAINER Jérémy DELVINQUIER

#Add built .jar file to the image
RUN mkdir app
ADD target/gateway.jar /app/
#Listening on port 9090 - Any value but check port matching
EXPOSE 9090

#Run the application contained in .jar
CMD ["java","-jar", "/app/gateway.jar"]
