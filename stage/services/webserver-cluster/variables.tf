variable "server_port" {
  description = "The port the server will use for http requests"
  type        = number

  default = 8080
}

variable "ec2_ami" {
  type        = string
  description = "The default ami I will use for playing with terraform"

  default = "ami-053b0d53c279acc90"
}
