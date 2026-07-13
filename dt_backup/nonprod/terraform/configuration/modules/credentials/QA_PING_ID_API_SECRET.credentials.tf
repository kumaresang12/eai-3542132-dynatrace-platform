# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "QA_PING_ID_API_SECRET" {
  name                       = "QA_PING_ID_API_SECRET"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
