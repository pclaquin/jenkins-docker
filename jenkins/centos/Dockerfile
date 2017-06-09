FROM centos:latest
USER root
RUN yum update -y 
RUN yum install openssh-client openssh-server -y
RUN yum install -y net-tools
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's/StrictModes yes/StrictModes no/g' /etc/ssh/sshd_config
RUN yum install -y iproute
RUN yum install -y python python-dev python-pip python-virtualenv 
RUN rm -rf /var/lib/apt/lists/*
RUN echo "root:test" | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
