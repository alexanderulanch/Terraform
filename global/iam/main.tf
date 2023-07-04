provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Owner     = "Alex Ulanch"
      ManagedBy = "Terraform"
    }
  }
}

module "users" {
  source = "../../../modules/landing-zone/iam-user"

  for_each  = toset(var.user_names)
  user_name = each.value
}
