variable "db_username" {
  description = "Username for the MySQL Database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Password for the MySQL Database"
  type        = string
  sensitive   = true
}
