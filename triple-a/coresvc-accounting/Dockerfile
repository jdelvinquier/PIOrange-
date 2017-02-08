#Only need a JVM
FROM java:jre-8
MAINTAINER Jérémy DELVINQUIER

#Add built .jar file to the image
RUN mkdir app
ADD target/AccountingService.jar /app/
#Listening on port 1813 - Any value but check port matching
EXPOSE 1813

#Run the application contained in .jar
CMD ["java","-jar", "/app/AccountingService.jar"]
