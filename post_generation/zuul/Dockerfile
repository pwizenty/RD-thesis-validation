FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/zuul*.jar
COPY ${JAR_FILE} zuul.jar
ENTRYPOINT ["java","-jar","/zuul.jar"]
