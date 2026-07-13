resource "dynatrace_web_app_auto_injection" "APPLICATION-429876265F49899D" {
  application_id = "APPLICATION-429876265F49899D"
  cache_control_headers {
    cache_control_headers = true
  }
  monitoring_code_source_section {
    code_source          = "OneAgent"
    monitoring_code_path = "/login/"
  }
  snippet_format {
    snippet_format = "OneAgent JavaScript Tag"
  }
}
