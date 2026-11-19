variable "user_name" {
  default = "terraform-s3-user"
}

variable "s3_read_policy" {
  type = string

  default = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}
