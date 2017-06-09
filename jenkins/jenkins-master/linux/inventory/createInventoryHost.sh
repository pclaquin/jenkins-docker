cat << EOF > $4/linux/inventory/inventory.txt

[localhost]
127.0.0.1
[docker_host]
$DOCKER_HOST 
[all:vars] 
container_name=$1 
image_name=$2 
sauvegarde_name=$3 
workspace=$4

EOF
