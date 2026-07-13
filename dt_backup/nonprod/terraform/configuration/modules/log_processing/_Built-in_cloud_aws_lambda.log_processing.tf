resource "dynatrace_log_processing" "_Built-in_cloud_aws_lambda" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDJkMTFiNDg2LWExNzgtNGFiZS1iYTNhLTc3ZTBiY2Q2NzRmNr7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "/aws/lambda/*") AND isNull(aws.arn)
  EOT
  rule_name    = "[Built-in] cloud:aws:lambda"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.log_group:STRING, INOUT aws.account.id:STRING?, IN content:STRING)
      | PARSE(aws.data_firehose.arn, "'arn:' LD:'__aws_partition' ':firehose:' LD:'aws.region' ':' LD:'__firehose_account_id' ':'")
      | PARSE(aws.log_group, "'/aws/lambda/' LD:aws.resource.id")
      | FIELDS_ADD(aws.account.id: IF(IS_NOT_NULL(aws.account.id), aws.account.id, __firehose_account_id))
      | FIELDS_ADD(aws.service: 'lambda')
      | FIELDS_ADD(aws.arn: 'arn:' + __aws_partition + ':' + aws.service + ':' + aws.region + ':' + aws.account.id + ':function:' +  aws.resource.id)
      | FIELDS_ADD(faas.id: aws.arn)
      | PARSE(content, "JSON{STRING:level}(flat=true)")
      | FIELDS_ADD(status:
            IF(IS_NULL(level), 
                  IF(STARTS(content, "[ERROR]"), "ERROR", IF(STARTS(content, "[WARN"), "WARN", "INFO")),
                  IF(STARTS(UPPER(level), "ERROR"),
                      "ERROR",
                      IF(STARTS(UPPER(level), "WARN"), "WARN", "INFO")
                  )
            )
      )
      | FIELDS_ADD(loglevel: status)
      | FIELDS_REMOVE(__aws_partition, __firehose_account_id, level)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/exampleStream",
          "aws.log_group": "/aws/lambda/example-lambda-resource",
          "cloud.provider": "aws",
          "content": "[ERROR] This is sample log forwarded by AWS Firehose from AWS Lambda"
      })
  }
}
