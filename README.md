# jenkins-docker

Jenkins server configured for script-testing.
This solution is made in order to save the state of the test machine once the test is successful.
Machine are saved by the following means, depending on their respective OS:
 - Linux Machines are Docker containers and are saved as such. They are brought up and destroyed dynamically.
 - Windows machines are considered to be virtual machines hosted on an ESXi. They are saved and restored via snapshots.
 
Components:
Jenkins is the automation server. It exposes an administration interface and an user interface. It orchestrates the actions.
Ansible performs the tests on remote machines and automatically verify the results.


Prerequisites: 
 Linux:
  A Linux machine able to launch Docker is needed in order to perform the tests.
  The Jenkins server comes as a Jenkinsfile and is supposed to run as a docker container.

 Windows:
  A Windows machine is used to relay commands to the ESXi via PowerCLI.
  A ESXi is used to run the machines on which the tests will be performed.
  
 

