FROM openjdk:11
ARG APP_NAME="spring-cloud-config-ws"
ARG RELEASE_VERSION="0.0.1"
ENV GIT_HOST=${GIT_HOST}
ENV GITHUB_USERNAME=${GITHUB_USERNAME}
ENV GITHUB_TOKEN=${GITHUB_TOKEN}
COPY target/spring-cloud-config-ws-0.0.1.jar spring-cloud-config-ws.jar
ENTRYPOINT ["java","-jar","spring-cloud-config-ws.jar"]
EXPOSE 8888 8889