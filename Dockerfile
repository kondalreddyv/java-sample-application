FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD ./target/*.jar java-sample-application-example.jar

EXPOSE 8080

CMD java -jar java-sample-application-example.jar
