FROM tomcat:8.5
MAINTAINER "PRIYANKA"
RUN apt-get update
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y sudo
RUN useradd -m -d /home/priya -s /bin/bash/priya
RUN echo "priya:priya1@"| chpasswd
RUN apt-get install net-tools
RUN apt-get install openssh-server
RUN apt-get install sshpass
RUN apt-get install git
COPY ola.war /usr/local/tomcat/webapps
ENTRYPOINT service usr/local/tomcat/bin/startup.sh && /bin/bash


