resource "dynatrace_log_processing" "_Built-in_cloud_aws_apprunner" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDhiNTQ1ODgzLTRhY2EtNGU5My05NmVlLTJlMjQzNDZmM2EyZb7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "/aws/apprunner/*") AND isNull(aws.arn)
  EOT
  rule_name    = "[Built-in] cloud:aws:apprunner"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.log_group:STRING, INOUT aws.account.id:STRING?, IN content:STRING)
      | PARSE(aws.data_firehose.arn, "'arn:' LD:'__aws_partition' ':firehose:' LD:'aws.region' ':' LD:'__firehose_account_id' ':'")
      | PARSE(aws.log_group, "'/aws/apprunner/' LD:'aws.resource.id' '/'  LD:'__aws_service_id' '/' LD EOF")
      | FIELDS_ADD(aws.account.id: IF(IS_NOT_NULL(aws.account.id), aws.account.id, __firehose_account_id))
      | FIELDS_ADD(aws.service: 'apprunner')
      | FIELDS_ADD(__resource: 'arn:' + __aws_partition + ':apprunner:' + aws.region + ':' + aws.account.id + ':service/' + aws.resource.id)
      | FIELDS_ADD(aws.arn: __resource + '/' + __aws_service_id)
      | FIELDS_ADD(status: IF(STARTS(content, "ERROR"), "ERROR", IF(STARTS(content, "WARN"), "WARN", "INFO")))
      | FIELDS_ADD(loglevel: status)
      | FIELDS_ADD(dt.source_entity: calculate_entity_id("cloud:aws:app_runner", "apprunner" + __resource))
      | FIELDS_ADD(dt.entity.custom_device: dt.source_entity)
      | FIELDS_REMOVE(__aws_partition, __aws_service_id, __resource, __firehose_account_id)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/testStream",
          "aws.log_group": "/aws/apprunner/hellopython/826a6e7aeff545b384932f8ea8d98f47/application",
          "cloud.provider": "aws",
          "content": "This is sample log forwarded by AWS Firehose from AWS AppRunner"
      })
  }
}
