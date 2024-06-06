terraform{
  backend"s3" {
    bucket = "poo-devops-project"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}
