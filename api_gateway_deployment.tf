resource "aws_api_gateway_deployment" "api" {
  depends_on = [
    aws_api_gateway_integration.api_get,
    aws_api_gateway_integration.api_post,
  ]
  rest_api_id       = aws_api_gateway_rest_api.api.id
  stage_name        = "test"
  stage_description = "test stage"
}
