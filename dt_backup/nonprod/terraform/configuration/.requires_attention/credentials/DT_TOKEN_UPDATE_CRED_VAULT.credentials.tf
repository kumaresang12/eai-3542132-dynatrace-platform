# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "DT_TOKEN_UPDATE_CRED_VAULT" {
  name                       = "DT_TOKEN_UPDATE_CRED_VAULT"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE", "SYNTHETIC", "EXTENSION_AUTHENTICATION" ]
  token                      = "################"
}
