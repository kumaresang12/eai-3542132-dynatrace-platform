# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "SAILPOINT_CLIENT_ID" {
  name                       = "SAILPOINT_CLIENT_ID"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
