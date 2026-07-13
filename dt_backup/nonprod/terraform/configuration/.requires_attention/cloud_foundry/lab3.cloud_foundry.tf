# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "lab3" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-wtcpcf"
  api_url           = "https://api.sys.lab3.paas.fedex.com/"
  label             = "lab3"
  login_url         = "https://login.sys.lab3.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-Dynatrace"
}
