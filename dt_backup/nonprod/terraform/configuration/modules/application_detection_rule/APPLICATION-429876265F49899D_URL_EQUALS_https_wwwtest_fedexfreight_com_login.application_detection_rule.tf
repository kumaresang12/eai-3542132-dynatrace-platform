resource "dynatrace_application_detection_rule" "APPLICATION-429876265F49899D_URL_EQUALS_https_wwwtest_fedexfreight_com_login" {
  application_identifier = "APPLICATION-429876265F49899D"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "EQUALS"
    pattern                  = "https://wwwtest.fedexfreight.com/login/"
  }
}
