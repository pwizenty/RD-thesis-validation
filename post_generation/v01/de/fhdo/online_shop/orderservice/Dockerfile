FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/orderservice*.jar
COPY ${JAR_FILE} orderservice.jar
ENTRYPOINT ["java","-jar","/orderservice.jar"]
