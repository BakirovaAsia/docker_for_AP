FROM tomcat
RUN apt-get update && apt install maven git apt-utils -y
#RUN mkdir /root/dz-docker && chmod -R 0777 /root/dz-docker && cd /root/dz-docker && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello && mvn package && cd target && cp hello-1.0.war /usr/local/tomcat/webapps

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

WORKDIR /usr/local/tomcat/boxfuse-sample-java-war-hello/
RUN mvn package && pwd && ls -la

#RUN cp ./target/CaucusCalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
#RUN cp -r  ./target/CaucusCalculator-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/CaucusCalculator-0.0.1-SNAPSHOT

#RUN cp *.war /var/lib/tomcat9/webapps/
#EXPOSE 8080
#RUN cd /root/dz-docker/JavaWorldLandmarks/
#RUN cd target
#RUN cp *.war /var/lib/tomcat9/webapps/
#RUN  ["tomcat9", "-g", "daemon off;"]
#CMD ["/usr/local/tomcat/bin/catalina.sh run", "-g", "daemon off;"]
#RUN /usr/local/tomcat/bin/catalina.sh run