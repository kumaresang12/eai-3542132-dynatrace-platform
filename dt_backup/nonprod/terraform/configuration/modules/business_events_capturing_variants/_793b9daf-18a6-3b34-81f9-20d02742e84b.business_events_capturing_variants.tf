resource "dynatrace_business_events_capturing_variants" "_793b9daf-18a6-3b34-81f9-20d02742e84b" {
  content_type_matcher = "ENDS_WITH"
  content_type_value   = "/json"
  insert_after         = ""
  parser               = "JSON"
  scope                = "environment"
}
