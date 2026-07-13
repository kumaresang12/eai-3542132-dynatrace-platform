# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "clwdev1" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-pcfclw"
  api_url           = "https://api.sys.clwdev1.paas.fedex.com/"
  label             = "clwdev1"
  login_url         = "https://login.sys.clwdev1.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-Dynatrace"
}
