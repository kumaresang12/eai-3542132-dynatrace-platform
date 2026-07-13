resource "dynatrace_attribute_allow_list" "http_route" {
  enabled = true
  key     = "http.route"
}
