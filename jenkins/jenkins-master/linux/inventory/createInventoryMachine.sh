echo [machine_test] > /home/inventory.txt
docker exec $1 ip -f inet addr | grep -v 127.0.0.1 | grep -Po 'inet \K[\d.]+' - >> /home/inventory.txt

