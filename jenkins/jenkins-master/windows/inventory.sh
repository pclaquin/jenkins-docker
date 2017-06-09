#Paramètre 1 : Nom de la machine
#Paramètre 2 : Nom du snapshot
#Paramètre 3 : Nom de l'utilisateur
#Paramètre 4 : Mot de passe
#Paramètre 5 : Serveur VMware
#Paramètre 6 : Répertoire pipeline
#Paramètre 7 : Machine controle Windows
#Paramètre 8 : Nom de domaine

cat << EOF > $6/windows/inventory.txt
[controle]
$7
[controle:vars] 
MACHINE=$1 
SNAPSHOT=$2
USER=$3
PASSWORD=$4
SERVER=$5

[windows]
$1.$8

[all:vars]
PIPELINE_HOME=$6

EOF
