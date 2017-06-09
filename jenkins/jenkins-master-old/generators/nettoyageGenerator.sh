cp $PIPELINE_HOME/templates/nettoyageTemplate.txt $PIPELINE_HOME/generated$1/nettoyage.yml
sed -i "s/IMAGE_NAME/$1/g" $PIPELINE_HOME/generated$1/nettoyage.yml 
