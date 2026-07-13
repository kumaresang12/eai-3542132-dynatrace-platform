resource "dynatrace_network_zone" "fdxf_atl1_devtest_cc_ext" {
  name                              = "fdxf.atl1.devtest_cc_ext.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 0
  num_of_oneagents_from_other_zones = 40
  num_of_oneagents_using            = 40
}
