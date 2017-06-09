#Paramètre 1 : Nom du conteneur de données à sauvegarder
#Détruit le conteneur jenkins-ubuntu
#Lance la procédure de backup
#Relance le conteneur jenkins-ubuntu

docker stop jenkins-ubuntu
docker rm jenkins-ubuntu
docker run --rm --volumes-from $1 -v /home/administrateur/docker/jenkins/jenkins-master/backup:/backup ubuntu tar cvf /backup/backup.tar /var/jenkins_home
docker run -d -p 8080:8080 --name jenkins-ubuntu --volumes-from $1 myjenkins
bash regenerate.sh $1
