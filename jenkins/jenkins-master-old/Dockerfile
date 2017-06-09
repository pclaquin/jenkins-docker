FROM jenkins:latest
MAINTAINER Pierre Claquin

USER root
RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get install build-essential git-core cmake xsltproc libssl-dev libx11-dev libxext-dev libxinerama-dev -y
RUN apt-get install libxcursor-dev libxdamage-dev libxv-dev libxkbfile-dev libasound2-dev libcups2-dev libxml2 libxml2-dev -y
RUN apt-get install libxrandr-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libxi-dev libgstreamer-plugins-base1.0-de -y
RUN apt-get install ansible -y
RUN apt-get install rsync sshpass -y
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

RUN mkdir /home/pipeline 
COPY availableImages /home/availableImages
COPY templates /home/pipeline/templates
COPY generators /home/pipeline/generators

ENV JAVA_OPTS "-Xmx8192m"
ENV ANSIBLE_HOST_KEY_CHECKING False
ENV DOCKER_HOST 172.12.0.1
ENV PIPELINE_HOME /home/pipeline
