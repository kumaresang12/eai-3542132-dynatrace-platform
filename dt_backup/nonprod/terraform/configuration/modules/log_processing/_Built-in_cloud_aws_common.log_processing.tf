resource "dynatrace_log_processing" "_Built-in_cloud_aws_common" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDcxMDhhODhjLWE0ODktNDZmNS1iYjZhLTI4ZmZlODg0MmZmOb7vVN4V2t6t"
  query        = "matchesValue(cloud.provider, \"aws\") AND isNotNull(aws.data_firehose.arn)"
  rule_name    = "[Built-in] cloud:aws:common"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.account.id:STRING?)
      | PARSE(aws.data_firehose.arn, "'arn:' LD ':firehose:' LD:'aws.region' ':' LD:'__firehose_account_id' ':'")
      | FIELDS_ADD(aws.account.id: IF(IS_NOT_NULL(aws.account.id), aws.account.id, __firehose_account_id))
      | FIELDS_ADD(cloud.region: aws.region)
      | FIELDS_ADD(cloud.account.id: aws.account.id)
      | FIELDS_ADD(status: 'INFO')
      | FIELDS_ADD(loglevel: 'INFO')
      | FIELDS_REMOVE(__firehose_account_id)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/exampleStream",
          "cloud.provider": "aws",
          "content": "This is sample log forwarded by AWS Firehose"
      })
  }
}
