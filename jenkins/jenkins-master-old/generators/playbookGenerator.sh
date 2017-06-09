#!/bin/sh
source $PIPELINE_HOME/generators/configDocker.conf
cp $PIPELINE_HOME/templates/playbookTemplate.txt $PIPELINE_HOME/generated$1/playbookMachineGenerator.yml
cp $PIPELINE_HOME/templates/inventoryTemplate.txt $PIPELINE_HOME/generated$1/inventoryDockerHost.py
sed -i "s/DOCKER_HOST/$DOCKER_HOST/g" $PIPELINE_HOME/generated$1/inventoryDockerHost.py
sed -i "s/DOCKER_IMAGE/$1/g" $PIPELINE_HOME/generated$1/playbookMachineGenerator.yml
