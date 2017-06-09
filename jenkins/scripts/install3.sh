docker run --name jenkins-data myjenkinsdata
docker run -p 8080:8080 --name jenkins --volumes-from jenkins-data myjenkins

