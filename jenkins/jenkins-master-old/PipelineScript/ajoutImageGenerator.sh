cp ajoutImageTemplate.txt ajoutImage$1.yml
sed -i "s/IMAGE_NAME/$1/g" ajoutImage$1.yml
