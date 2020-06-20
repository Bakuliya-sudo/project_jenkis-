terraform {
  required_version = "0.11.14"
  backend "s3" {
    bucket = "terraform-state-april-class-mihaela"
    key    = "path/to/my/jenkings"
    region = "us-east-1"
  }
}