provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_tf_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "my_first_tf_instance"
  }
}
