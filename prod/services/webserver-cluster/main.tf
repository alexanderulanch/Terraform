provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Owner     = "Alex Ulanch"
      ManagedBy = "Terraform"
    }
  }
}

module "webserver_cluster" {
  # source = "github.com/alexanderulanch/terraform-modules//services/webserver-cluster?ref=v0.0.1"
  source = "../../../../modules/services/webserver-cluster"

  cluster_name           = "webserver-prod"
  db_remote_state_bucket = "terraform-state-876253587652314"
  db_remote_state_key    = "prod/data-stores/my-sql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10
  server_text   = "new_text :)"

  custom_tags = {
    Owner     = "Alex Ulanch"
    ManagedBy = "Terraform"
  }

  enable_autoscaling = true
}
