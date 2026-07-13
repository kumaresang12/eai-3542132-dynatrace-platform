resource "dynatrace_attribute_allow_list" "aws_ecr_account_id" {
  enabled = true
  key     = "aws.ecr.account.id"
}
