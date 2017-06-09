docker run -v /var/jenkins_home --name jenkins-data myjenkinsdata /bin/bash
docker run -d --rm --volumes-from jenkins-data -v ../backup:/backup ubuntu bash -c "cd /var/ && tar xvf /backup/backup.tar --strip 1"
docker stop jenkins-ubuntu > /dev/null
docker rm jenkins-ubuntu > /dev/null
docker run -d --volumes-from jenkins-data -p 8080:8080 --name jenkins myjenkins
