terraform {
  backend "s3" {
    key            = "prod/services/webserver-cluster/terraform.tfstate"
    bucket         = "terraform-state-876253587652314"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
