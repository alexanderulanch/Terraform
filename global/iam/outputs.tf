output "all_arns" {
  value       = values(module.users)[*].user_arn
  description = "The arns of the created IAM users"
}
