terraform{
  backend"s3" {
    bucket = "pooja-devops-bucket"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}
