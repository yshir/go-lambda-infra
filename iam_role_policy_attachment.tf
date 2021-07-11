resource "aws_iam_role_policy_attachment" "api" {
  role       = aws_iam_role.lambda.name
  policy_arn = aws_iam_policy.lambda.arn
}
