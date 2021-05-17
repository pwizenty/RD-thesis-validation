FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/eureka*.jar
COPY ${JAR_FILE} eureka.jar
ENTRYPOINT ["java","-jar","/eureka.jar"]
