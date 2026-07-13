resource "dynatrace_log_processing" "_Built-in_cloud_aws_cloudtrail" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJGIzM2Q2ZDE0LTg2MjMtNGQ4MS1hNzE3LTMwMTAyMjY2YmNhZL7vVN4V2t6t"
  query        =<<-EOT
    matchesValue(cloud.provider, "aws") AND isNotNull(aws.data_firehose.arn) AND matchesPhrase(aws.log_group, "aws-cloudtrail-logs*")
  EOT
  rule_name    = "[Built-in] cloud:aws:cloudtrail"
  processor_definition {
    rule =<<-EOT
      USING(IN content:STRING)
      | PARSE(content, "JSON {STRING:eventName, STRING:errorCode, JSON {STRING:arn}:userIdentity}: parsedJson")
      | FIELDS_ADD(aws.service: "cloudtrail")
      | FIELDS_ADD(audit.action: parsedJson["eventName"], audit.identity: parsedJson["userIdentity"]["arn"], __error_code: parsedJson["errorCode"])
      | FIELDS_ADD(audit.result: IF(IS_NOT_NULL(__error_code), "Failed." + parsedJson["errorCode"], "Succeeded"))
      | FIELDS_ADD(status: IF(IS_NOT_NULL(__error_code), "ERROR", "INFO"))
      | FIELDS_ADD(loglevel: status)
      | FIELDS_REMOVE(parsedJson, __error_code)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "aws.data_firehose.arn": "arn:aws:firehose:us-east-1:012345678901:deliverystream/testStream",
          "aws.log_group": "aws-cloudtrail-logs-012345678901-1cceb782",
          "cloud.provider": "aws",
          "content": "{\"eventVersion\": \"1.08\", \"userIdentity\": {\"type\": \"AssumedRole\", \"principalId\": \"someSecret:012345678901-somemonitoringuser\", \"arn\": \"arn:aws:iam::012345678901:user/somemonitoringuser\", \"accountId\": \"012345678901\", \"accessKeyId\": \"anotherSecret\", \"sessionContext\": {\"sessionIssuer\": {\"type\": \"Role\", \"principalId\": \"someSecret\", \"arn\": \"arn:aws:iam::012345678901:role/sso/dtRoleAdmin\", \"accountId\": \"012345678901\", \"userName\": \"dtRoleAdmin\"}, \"webIdFederationData\": {}, \"attributes\": {\"mfaAuthenticated\": \"false\", \"creationDate\": \"2021-06-21T06:30:44Z\"}}}, \"eventTime\": \"2021-05-28T11:39:33Z\", \"eventSource\": \"rds.amazonaws.com\", \"eventName\": \"DescribeEvents\", \"awsRegion\": \"ap-southeast-2\", \"sourceIPAddress\": \"155.55.55.055\", \"userAgent\": \"aws-sdk-java/1.11.789 Linux/5.4.0-56-generic OpenJDK_64-Bit_Server_VM/11.0.8+10 java/11.0.8 vendor/AdoptOpenJDK\", \"errorCode\": \"InvalidDBClusterStateFault\", \"requestParameters\": {\"startTime\": \"May 28, 2021 11:29:00 AM\", \"endTime\": \"May 28, 2021 11:34:00 AM\"}, \"responseElements\": null, \"requestID\": \"69de2278-ef7a-4b9a-bdc5-a78c9210ea4e\", \"eventID\": \"249491df-4970-421d-8575-5bf555357c14\", \"readOnly\": true, \"eventType\": \"AwsApiCall\", \"managementEvent\": true, \"eventCategory\": \"Management\", \"recipientAccountId\": \"012345678901\"}"
      })
  }
}
