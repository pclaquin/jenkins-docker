cat DockerfileTemplate.txt > Dockerfile
filename="config.txt"
while read -r line
do
	echo "ENV $line" >> Dockerfile
done < "$filename"
