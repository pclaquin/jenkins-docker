FROM partlab/ubuntu-java

MAINTAINER Pierre Claquin 

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV JENKINS_HOME /var/jenkins_home

RUN wget -qO - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
    echo 'deb http://pkg.jenkins-ci.org/debian binary/' \
      | tee /etc/apt/sources.list.d/jenkins.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y jenkins && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f jenkins disable

RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update -y
RUN apt-get install ansible -y
RUN apt-get install python-pip -y
RUN apt-get install python-dev -y
RUN apt-get install build-essential -y
RUN pip install "pywinrm>=0.2.2"
RUN apt-get install rsync sshpass -y

#Kerberos pour connexion aux Windows AD
RUN apt-get install python-dev libkrb5-dev krb5-user -y
RUN pip install pywinrm[kerberos]

RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins


RUN mkdir /home/pipeline
COPY availableImages /home/availableImages
COPY linux /home/pipeline/linux
COPY configuration /home/pipeline/configuration
COPY windows /home/pipeline/windows
COPY configuration/krb5.conf /etc/krb5.conf
COPY configuration/ansible.cfg /etc/ansible/ansible.cfg

RUN tz=Europe/Paris && cp -vf /usr/share/zoneinfo/$tz /etc/localtime && echo $tz | sudo tee /etc/timezone

ENV JAVA_OPTS "-Xmx8192m"
ENV ANSIBLE_HOST_KEY_CHECKING False
ENV DOCKER_HOST 172.17.0.1
ENV PIPELINE_HOME /home/pipeline

VOLUME /var/jenkins_home

EXPOSE 8080 50000


CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war"]

