resource "aws_lambda_function" "api" {
  filename      = "dummy_function.zip"
  function_name = "go-lambda-api"
  role          = aws_iam_role.lambda.arn
  handler       = "lambda"
  runtime       = "go1.x"

  memory_size = 128
  timeout     = 900

  environment {
    variables = {
      DYNAMO_TABLE_USERS = aws_dynamodb_table.users.name
    }
  }
}
