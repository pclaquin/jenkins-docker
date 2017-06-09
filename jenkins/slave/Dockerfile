FROM  thomasabraham/java-sshd:latest
USER root
RUN apt-get update -y
RUN apt-get install sudo -y
RUN apt-get install build-essential -y
RUN apt-get install build-essential git-core cmake xsltproc libssl-dev libx11-dev libxext-dev libxinerama-dev -y
RUN apt-get install libxcursor-dev libxdamage-dev libxv-dev libxkbfile-dev libasound2-dev libcups2-dev libxml2 libxml2-dev -y
RUN apt-get install libxrandr-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libxi-dev libgstreamer-plugins-base1.0-de -y
RUN apt-get install -y rsync sshpass
RUN mkdir /var/jenkins
RUN mkdir /home/test
RUN useradd test
RUN adduser test sudo
RUN usermod -aG sudo test
RUN echo 'test ALL=(ALL) ALL' >> /etc/sudoers
RUN chown test:test /home/test
RUN echo "test:test" | chpasswd
RUN chown -R test /var/jenkins
RUN chmod -R 775 /var/jenkins

