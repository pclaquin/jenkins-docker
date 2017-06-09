#Paramètre 1 : Nom du conteneur de données à sauvegarder
#Détruit le conteneur jenkins-ubuntu
#Lance la procédure de backup
#Relance le conteneur jenkins-ubuntu

DATE=$(date +%Y-%m-%d:%H:%M:%S)
docker stop jenkins-ubuntu
docker rm jenkins-ubuntu
docker run --rm --volumes-from $1 -v /home/administrateur/docker/jenkins/jenkins-master/backup:/backup ubuntu tar cvf /backup/backup$DATE.tar /var/jenkins_home --exclude "/var/jenkins_home/jobs/*/builds" 
docker run -d -p 8080:8080 --name jenkins-ubuntu --volumes-from $1 myjenkins
