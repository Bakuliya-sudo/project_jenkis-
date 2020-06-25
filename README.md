#Jenkings Instance

## This repozitory is to create a Jenkings Amazon instance in a private VPC
For this project we used terraform 11.14 version.

1. vpc.tf file is to create a private VPC with variable region with private and public subnets ( private_subnest.tf and public_subnets.yf files). 
2. variable.tf file helps your code to be deployed in any region.
3. setenv.sh file is made to change the workspace of your instance and manage the states, please create this file in your repository and coppy all the information attached to that file, next step is to create a foldes #configuations, where you have your .tfvars. files that contains all the regions you need to create the instance and keep in mind that because we have .gitignore that keep the information of those file local.
4. instanceAMI.tf file is used to find the lates ami-id for Amazon intaces, because we want this repository to be used globaly we used owner_id intance.
5. In order to connect to your ec2-user we created our key_pair.tf.
6. The public subnets need to be attached to our interenet gateway, the code is in networking.tf file.
7. securitygroups.tf has the necesary ports opened for your intance to have jenkings running. 
8. to install jenkins see the codes in null_resource.tf file.
9. All your metadata should me stored in a S3 buket and for that need to have backend.tf file that personalize your storage name. This file should be present in #configuration folder as well. This S3 buked will be loked and only the team members will have acces to it. 
10. in the instance.tf file we add all the dependency needed to make it reusable. 
in your workspace please run # spurce setenv.sh -var-file configurations/regions/ohio.tfvars to change the local file in Ohio ( or choose the necesary region).
after you set your workspace run #terraform init, then #terraform apply -var-file configurations/regions/ohio.tfvar to create your Jenkings instance.
coppy the instance public-ip and in your browser add :8080 to connect to jenkins service.
