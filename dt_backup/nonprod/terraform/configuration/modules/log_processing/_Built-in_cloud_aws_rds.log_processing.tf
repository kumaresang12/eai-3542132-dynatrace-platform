resource "dynatrace_log_processing" "_Built-in_cloud_aws_rds" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDBmOTJkZDZjLTQzZDQtNDllOC04OWQ3LTcxMmU3ZDY5YjFkMr7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "/aws/rds/instance/*") AND isNull(aws.arn)
  EOT
  rule_name    = "[Built-in] cloud:aws:rds"
  processor_definition {
    rule =<<-EOT
      USING(IN aws.data_firehose.arn:STRING, INOUT aws.log_group:STRING, INOUT aws.account.id:STRING?, IN content:STRING)
      | PARSE(aws.data_firehose.arn, "'arn:' LD:'__aws_partition' ':firehose:' LD:'aws.region' ':' LD:'__firehose_account_id' ':'")
      | PARSE(aws.log_group, "'/aws/rds/instance/' LD:'aws.resource.id' '/' LD:'__aws_log_type'")
      | FIELDS_ADD(aws.account.id: IF(IS_NOT_NULL(aws.account.id), aws.account.id, __firehose_account_id))
      | FIELDS_ADD(aws.service: 'rds')
      | FIELDS_ADD(aws.arn: 'arn:' + __aws_partition + ':' + aws.service + ':' + aws.region + ':' + aws.account.id + ':db:' + aws.resource.id)
      | FIELDS_ADD(__custom_device_resource_id: 'rdsarn:' + __aws_partition + ':' + aws.service + ':' + aws.region + ':' + aws.account.id + ':db/' + aws.resource.id)
      | FIELDS_ADD(dt.entity.relational_database_service: calculate_entity_id("RELATIONAL_DATABASE_SERVICE", aws.arn))
      | FIELDS_ADD(dt.entity.custom_device: calculate_entity_id('cloud:aws:rds', __custom_device_resource_id))
      | FIELDS_ADD(dt.source_entity: [dt.entity.custom_device, dt.entity.relational_database_service])
      | FIELDS_ADD(log.source: "rds - " + __aws_log_type + " logs")
      | FIELDS_ADD(status: IF(CONTAINS(__aws_log_type, 'slowquery'), "WARN", "INFO"))
      | FIELDS_ADD(status: IF(CONTAINS(__aws_log_type, 'postgresql') AND CONTAINS(content, ':WARNING:'), "WARN", status))
      | FIELDS_ADD(status: IF(CONTAINS(__aws_log_type, 'postgresql') AND CONTAINS(content, ':ERROR:'), "ERROR", status))
      | FIELDS_ADD(status: IF(NOT(CONTAINS(__aws_log_type, 'postgresql')) AND CONTAINS(content, '[Warning]'), "WARN", status))
      | FIELDS_ADD(status: IF(NOT(CONTAINS(__aws_log_type, 'postgresql')) AND CONTAINS(content, '[Error]'), "ERROR", status))
      | FIELDS_ADD(loglevel: status)
      | FIELDS_REMOVE(__aws_partition, __aws_log_type, __firehose_account_id, __custom_device_resource_id)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/testStream",
          "aws.log_group": "/aws/rds/instance/mysql-db-for-logs/error",
          "cloud.provider": "aws",
          "content": "2021-07-26T12:37:18.256134Z 12 [Warning] [MY-010055] [Server] This is sample log forwarded by AWS Firehose from AWS RDS"
      })
  }
}
