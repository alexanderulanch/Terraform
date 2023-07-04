output "address" {
  value       = aws_db_instance.example.address
  description = "The endpoint for the MySQL database address"
}

output "port" {
  value       = aws_db_instance.example.port
  description = "The port the MySQL database is listening on"
}
