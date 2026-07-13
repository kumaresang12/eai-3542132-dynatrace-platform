# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "INGEST_LOGS_ACCESS_TOKEN" {
  name                       = "INGEST_LOGS_ACCESS_TOKEN"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
