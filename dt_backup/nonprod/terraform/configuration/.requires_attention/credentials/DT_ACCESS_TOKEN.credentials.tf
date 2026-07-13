# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "DT_ACCESS_TOKEN" {
  name                       = "DT_ACCESS_TOKEN"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
