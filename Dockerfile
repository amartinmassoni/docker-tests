FROM ubuntu:20.04

WORKDIR /opt
RUN apt update
RUN apt install -y openjdk-8-jre-headless wget

RUN wget https://ftp.cixug.es/apache/tomcat/tomcat-8/v8.5.59/bin/apache-tomcat-8.5.59.tar.gz
RUN tar -zxvf apache-tomcat-8.5.59.tar.gz

EXPOSE 8080
CMD [ "/opt/apache-tomcat-8.5.59/bin/catalina.sh", "run" ]

