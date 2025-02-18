# output iam user access key
output "iam_user_access_key" {
  value     = aws_iam_access_key.iam-user-access-key.id
  sensitive = true
}

# output iam user secret key
output "iam_user_secret_key" {
  value     = aws_iam_access_key.iam-user-access-key.secret
  sensitive = true
}
