FROM  thomasabraham/java-sshd:latest
USER root
RUN apt-get update -y
RUN apt-get install sudo -y
RUN apt-get install build-essential -y
RUN apt-get install -y rsync sshpass
RUN echo test | passwd root

