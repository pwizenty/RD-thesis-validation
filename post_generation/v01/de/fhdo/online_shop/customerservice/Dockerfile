FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/customerservice*.jar
COPY ${JAR_FILE} customerservice.jar
ENTRYPOINT ["java","-jar","/customerservice.jar"]
