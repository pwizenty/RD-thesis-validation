FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/itemservice*.jar
COPY ${JAR_FILE} itemservice.jar
ENTRYPOINT ["java","-jar","/itemservice.jar"]
