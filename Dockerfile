FROM openjdk:17-jdk-alpine

ARG JAR_PATH=target/*.jar

ARG PROP

ENV ENV_FILE=${PROP}

COPY ${JAR_PATH} spring-cloud-config-server-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/spring-cloud-config-server-0.0.1-SNAPSHOT.jar","--spring.config.location=${ENV_FILE}"]
