cp $PIPELINE_HOME/templates/inventoryTemplate.txt $PIPELINE_HOME/generated$1/inventoryDockerHost.py
sed -i "s/REPLACE_IP/$DOCKER_HOST/g" $PIPELINE_HOME/generated$1/inventoryDockerHost.py
chmod +x $PIPELINE_HOME/generated$1/inventoryDockerHost.py
