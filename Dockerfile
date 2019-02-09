FROM alpine/git as base
WORKDIR /app
RUN git clone https://github.com/spring-projects/spring-petclinic.git 


FROM maven:3.5-jdk-8-alpine as builder
WORKDIR /app
COPY --from=base /app/spring-petclinic /app 
RUN mvn install 

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /app 
CMD ["java -jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar"]
