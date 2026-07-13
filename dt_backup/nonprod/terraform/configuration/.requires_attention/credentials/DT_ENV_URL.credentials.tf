# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "DT_ENV_URL" {
  name                       = "DT_ENV_URL"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
