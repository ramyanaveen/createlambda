resource "aws_iam_role_policy" "lambda_ramya_policy" {
  name = "lambda_ramya_policy"
  role = "${aws_iam_role.lambda_ramya_role.id}"
  policy = "${file("iam/iam-policy.json")}"

}



  resource "aws_iam_role" "lambda_ramya_role" {
  name = "lambda_ramya_role"
  assume_role_policy = "${file("iam/iam-role.json")}"
  }
