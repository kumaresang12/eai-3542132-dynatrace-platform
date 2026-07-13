# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "DIGICERT_API_KEY" {
  name                       = "DIGICERT_API_KEY"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
