# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "Okta_Signing_Key_PEM" {
  name                       = "Okta Signing Key PEM"
  description                = "RSA private key for JWT client assertion"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
