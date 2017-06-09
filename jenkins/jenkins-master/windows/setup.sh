#Paramètre 1 : Identifiant
#Paramètre 2 : Mot de passe
echo $2 | kinit $1
klist
