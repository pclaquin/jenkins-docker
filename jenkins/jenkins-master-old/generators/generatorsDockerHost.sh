bash $PIPELINE_HOME/generators/inventoryGeneratorHost.sh $1
bash $PIPELINE_HOME/generators/nettoyageGenerator.sh $1
bash $PIPELINE_HOME/generators/playbookGenerator.sh $1

