# ATTENTION Please fill in the correct password
resource "dynatrace_cloud_foundry" "cledev1-az3" {
  enabled           = true
  active_gate_group = "fdxf-nonprod-routing-pcfcle"
  api_url           = "https://api.sys.cledev1-az3.paas.fedex.com/"
  label             = "cledev1-az3"
  login_url         = "https://login.sys.cledev1-az3.paas.fedex.com/"
  password          = "$${state.secret_value}"
  username          = "pcf-dynatrace"
}
