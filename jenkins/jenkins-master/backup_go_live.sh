unset options i
while IFS= read -r -d $'\0' f; do
  options[i++]=$(basename "$f")
done < <(find backup/ -maxdepth 1 -type f -name "backup*" -print0)
echo "Choisissez un fichier de backup"

unset container i
while IFS= read -r f; do
  container[i++]=$f
done < <(docker ps -a --format '{{.Names}}')


select opt in "${options[@]}" "Stop"; do
  case $opt in
    backup*)
      echo "Fichier de backup $opt sélectionné"
      BACKUP_FILE=$opt
      echo "Quel est le nom du nouveau volume de backup ?"
      read BACKUP
      echo "Quel est le nom du conteneur à relancer ?"
      select cont in "Nouveau conteneur" "Stop" "${container[@]}"; do
       case $cont in
        "Stop")
          echo "Arrêt"
          exit
          ;;
        "Nouveau conteneur")
          echo "Entrez le nom du conteneur"
          read $CONTAINER
          break
          ;; 
        *)	
          CONTAINER=$cont
          break
          ;;
        esac
      done
      
      docker run -v /var/jenkins_home --name $BACKUP myjenkinsdata /bin/bash
      docker run -d --rm --volumes-from $BACKUP -v /home/administrateur/docker/jenkins/jenkins-master/backup:/backup ubuntu bash -c "cd /var/ && tar xvf /backup/$BACKUP_FILE --strip 1"
      docker stop $CONTAINER > /dev/null
      docker rm $CONTAINER > /dev/null
      docker run -d --volumes-from $BACKUP -p 8080:8080 --name $CONTAINER myjenkins
        break
        ;;
    "Stop")
      echo "Arrêt"
      break
      ;;
    *)
      echo "Ceci n'est pas un nombre."
      ;;
   esac
done
