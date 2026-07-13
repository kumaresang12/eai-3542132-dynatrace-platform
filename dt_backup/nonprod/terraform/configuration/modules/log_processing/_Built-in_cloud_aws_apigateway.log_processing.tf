resource "dynatrace_log_processing" "_Built-in_cloud_aws_apigateway" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJGY4MDg5MGVhLTcyMjQtNGM0NS1iNDNlLTBkZjg0Njk5OTZmNL7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "API-Gateway-Execution-Logs_*") AND isNull(aws.arn)
  EOT
  rule_name    = "[Built-in] cloud:aws:apigateway"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.log_group:STRING)
      | PARSE(aws.data_firehose.arn, "'arn:' LD:'__aws_partition' ':firehose:' LD:'aws.region' ':'")
      | PARSE(aws.log_group, "'API-Gateway-Execution-Logs_' LD:aws.resource.id '/'")
      | FIELDS_ADD(aws.service: 'apigateway')
      | FIELDS_ADD(aws.arn: 'arn:' + __aws_partition + ':' + aws.service + ':' + aws.region + '::/restapis/' + aws.resource.id)
      | FIELDS_REMOVE(__aws_partition)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/exampleStream",
          "aws.log_group": "API-Gateway-Execution-Logs_dzvck4sjqk/TEST",
          "cloud.provider": "aws",
          "content": "This is sample log forwarded by AWS Firehose from AWS ApiGateway"
      })
  }
}
