docker build -t myjenkins .
docker stop jenkins-master
docker rm jenkins-master
docker run -d --name jenkins-master --volumes-from jenkins-data -p 8080:8080 myjenkins
