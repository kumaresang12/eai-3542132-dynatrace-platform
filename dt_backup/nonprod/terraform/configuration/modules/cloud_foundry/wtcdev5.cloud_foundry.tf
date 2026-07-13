# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "wtcdev5" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-wtcpcf-bo"
  api_url           = "https://api.sys.wtcdev5.paas.fedex.com/"
  label             = "wtcdev5"
  login_url         = "https://login.sys.wtcdev5.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-Dynatrace"
}
