# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "clwdev2" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-pcfclw"
  api_url           = "https://api.sys.clwdev2.paas.fedex.com/"
  label             = "clwdev2"
  login_url         = "https://login.sys.clwdev2.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-Dynatrace"
}
