resource "dynatrace_log_processing" "_Built-in_cloud_aws_sns" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDJlMmZmNzg2LTIxZWMtNDY0NC05OTM1LTkxNjM0YTZiZTA0Nr7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "sns/*") AND isNull(aws.arn)
  EOT
  rule_name    = "[Built-in] cloud:aws:sns"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.log_group:STRING, INOUT aws.account.id:STRING?)
      | PARSE(aws.data_firehose.arn, "'arn:' LD:'__aws_partition' ':firehose:' LD:'aws.region' ':' LD:'__firehose_account_id' ':'")
      | PARSE(aws.log_group, "'sns/' LD '/' LD '/' LD:'aws.resource.id' ('/' LD:'__failure_suffix')? EOF")
      | FIELDS_ADD(aws.account.id: IF(IS_NOT_NULL(aws.account.id), aws.account.id, __firehose_account_id))
      | FIELDS_ADD(aws.service: 'sns')
      | FIELDS_ADD(aws.arn: 'arn:' + __aws_partition + ':sns:' + aws.region + ':' + aws.account.id + ':' + aws.resource.id)
      | FIELDS_ADD(status: IF(IS_NULL(__failure_suffix), 'INFO', 'ERROR'))
      | FIELDS_ADD(loglevel: status)
      | FIELDS_ADD(dt.source_entity: calculate_entity_id('cloud:aws:sns', 'sns' + aws.arn))
      | FIELDS_ADD(dt.entity.custom_device: dt.source_entity)
      | FIELDS_REMOVE(__failure_suffix, __aws_partition, __firehose_account_id)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/testStream",
          "aws.log_group": "sns/us-east-1/681740908962/kinesis-firehose-tests.fifo/Failure",
          "cloud.provider": "aws",
          "content": "[DEBUG] This is sample log forwarded by AWS Firehose from AWS SNS"
      })
  }
}
