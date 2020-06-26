terraform {
  backend "s3" {
    bucket = "terraform-state-april-class-mihaela"
    key    = "jenkins/us-east-1/tools/ohio/jenkins.tfstate"
    region = "us-east-1"
  }
}
