FROM ubuntu:18.04
ADD wso2das-3.1.0 /mnt/wso2das-3.1.0
ADD jdk1.8.0_121 /mnt/jdk1.8.0_121

ENV JAVA_HOME /mnt/jdk1.8.0_121
ENV PATH ${PATH}:${JAVA_HOME}/bin
ENTRYPOINT /mnt/wso2das-3.1.0/bin/wso2server.sh