terraform {
  backend "s3" {
    key            = "stage/data-stores/my-sql/terraform.tfstate"
    bucket         = "terraform-state-876253587652314"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
