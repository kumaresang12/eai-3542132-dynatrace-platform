resource "dynatrace_application_detection_rule" "APPLICATION-E65F56CEA87F6D84_DOMAIN_MATCHES_http_u-eai3541611-ppldir-l2_test_cloud_fedex_com_PeopleDirectory" {
  application_identifier = "APPLICATION-E65F56CEA87F6D84"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "http://u-eai3541611-ppldir-l2.test.cloud.fedex.com/PeopleDirectory"
  }
}
