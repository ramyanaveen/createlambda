resource "aws_iam_role_policy" "lambda_ramya_policy" {
  name = "lambda_ramya_policy"
  role = aws_iam_role.lambda_ramya_role.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "logs:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}



  resource "aws_iam_role" "lambda_ramya_role" {
  name = "lambda_ramya_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })
  }
