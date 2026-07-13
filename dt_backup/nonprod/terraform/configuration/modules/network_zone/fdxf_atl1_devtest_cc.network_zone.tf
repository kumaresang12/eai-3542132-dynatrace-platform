resource "dynatrace_network_zone" "fdxf_atl1_devtest_cc" {
  name                              = "fdxf.atl1.devtest_cc.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 237
  num_of_oneagents_from_other_zones = 55
  num_of_oneagents_using            = 292
}
