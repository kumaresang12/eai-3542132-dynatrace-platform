# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "SAILPOINT_CLIENT_SECRET" {
  name                       = "SAILPOINT_CLIENT_SECRET"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
