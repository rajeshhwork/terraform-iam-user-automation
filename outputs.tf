
output "iam_user_name" {
  value = aws_iam_user.s3_user.name
}

output "policy_arn" {
  value = aws_iam_policy.s3_read.arn
}

