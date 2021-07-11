resource "aws_iam_policy" "lambda" {
  name   = "example-lambda"
  policy = data.aws_iam_policy_document.lambda.json
}
