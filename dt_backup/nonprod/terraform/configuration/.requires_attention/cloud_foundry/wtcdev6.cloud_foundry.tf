# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "wtcdev6" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-wtcpcf"
  api_url           = "https://api.sys.wtcdev6.paas.fedex.com/"
  label             = "wtcdev6"
  login_url         = "https://login.sys.wtcdev6.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-Dynatrace"
}
