# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "clwdev4-az1" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-pcfclw"
  api_url           = "https://api.sys.clwdev4-az1.paas.fedex.com/"
  label             = "clwdev4-az1"
  login_url         = "https://login.sys.clwdev4-az1.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-dynatrace"
}
