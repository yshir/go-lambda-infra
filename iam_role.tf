resource "aws_iam_role" "lambda" {
  name               = "example-lambda"
  assume_role_policy = file("assume_role/lambda.json")
}
