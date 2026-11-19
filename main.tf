
resource "aws_iam_user" "s3_user" {
  name = var.user_name

  tags = {
    Project = "IAM-Automation"
  }
}

resource "aws_iam_policy" "s3_read" {

  name = "terraform-s3-read-policy"

  policy = var.s3_read_policy
}

resource "aws_iam_user_policy_attachment" "attach" {

  user = aws_iam_user.s3_user.name

  policy_arn = aws_iam_policy.s3_read.arn
}

