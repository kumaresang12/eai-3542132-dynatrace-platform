resource "dynatrace_attribute_allow_list" "aws_lambda_function_name" {
  enabled = true
  key     = "aws.lambda.function.name"
}
