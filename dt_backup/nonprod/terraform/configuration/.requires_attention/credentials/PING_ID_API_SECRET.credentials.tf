# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "PING_ID_API_SECRET" {
  name                       = "PING_ID_API_SECRET"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
