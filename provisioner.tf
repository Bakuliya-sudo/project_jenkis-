
# resource "aws_instance" "centos" {
#   ami        = "${data.aws_ami.centos.id}"
#   key_name      = "${aws_key_pair.deployer.key_name}"
#   instance_type = "t2.micro"
#   provisioner   "remote-exec" {
#     connection {
#         host        = "${self.public_ip}"
#         type        = "ssh"
#         user        = "centos"
#         private_key = "${file("~/.ssh/id_rsa")}"
#     }
#     #inline = [

#     #   "sudo yum install -y epel-release -y",
#     #   "sudo yum update",
#     #   "sudo reboot",
#     #   "sudo yum install wget -y",
#     #   "sudo yum install java-1.8.0-openjdk.x86_64",
#     #   "java -version",
#     #   "sudo cp /etc/profile /etc/profile_backup",
#     #   "echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile",
#     #   "echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile",
#     #   "source /etc/profile",
#     #   "sudo cd ~",
#     #   "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#     #   "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
#     #   "yum install jenkins -y",
#     #   "sudo systemctl start jenkins.service",
#     #   "sudo systemctl enable jenkins.service"
#     # ]
#   }
# }
#  provisioner   "file" {
#     connection {
#         host        = "${self.public_ip}"
#         type        = "ssh"
#         user        = "centos"
#         private_key = "${file("~/.ssh/id_rsa")}"
#     }
#   }
