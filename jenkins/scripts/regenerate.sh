#En paramètre : le nom du conteneur de données
docker build -t myjenkinsubuntu .
docker stop jenkins-ubuntu
docker rm jenkins-ubuntu
docker run -d --name jenkins-ubuntu --volumes-from $1 -p 8080:8080 myjenkinsubuntu
