FROM ubuntu:18.04
ADD wso2esb-5.0.0 /mnt/wso2esb-5.0.0
ADD jdk1.7.0_80 /mnt/jdk1.7.0_80

ENV JAVA_HOME /mnt/jdk1.7.0_80
#RUN ["chmod", "+x", "/mnt/jdk1.8.0_141/*"]
ENV PATH ${PATH}:${JAVA_HOME}/bin
EXPOSE 8280
ENTRYPOINT /mnt/wso2esb-5.0.0/bin/wso2server.sh