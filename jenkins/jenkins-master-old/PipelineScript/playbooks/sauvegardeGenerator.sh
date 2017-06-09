rm -f sauvegarde.yml
cp sauvegardeTemplate.txt sauvegarde.yml
sed -i "s/IMAGE_NAME/$1/g" sauvegarde.yml
