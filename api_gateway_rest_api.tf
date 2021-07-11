resource "aws_api_gateway_rest_api" "api" {
  name        = "go-lambda-api"
  description = "go-lambda-api"
  policy      = data.aws_iam_policy_document.api_policy.json
}
