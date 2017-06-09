#!/bin/sh
. configDocker.conf
cp playbookTemplate.txt playbookMachineGenerator.yml
cp inventoryTemplate.txt inventoryDockerHost.py
sed -i "s/DOCKER_HOST/$DOCKER_HOST/g" inventoryDockerHost.py
sed -i "s/DOCKER_IMAGE/$1/g" playbookMachineGenerator.yml
