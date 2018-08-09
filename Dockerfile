FROM tomcat:8.5
MAINTAINER "PRIYANKA"
#General requirements
RUN apt-get update
RUN apt-get install -y procps
RUN useradd -m -d /home/priya -s /bin/bash/priya
RUN echo "priya:priya1@"| chpasswd
#
COPY ola.war /usr/local/tomcat/webapps
ENTRYPOINT service usr/local/tomcat/bin/startup.sh && /bin/bash


