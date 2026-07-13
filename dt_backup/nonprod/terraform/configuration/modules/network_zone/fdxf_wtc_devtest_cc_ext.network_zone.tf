resource "dynatrace_network_zone" "fdxf_wtc_devtest_cc_ext" {
  name                              = "fdxf.wtc.devtest_cc_ext.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 0
  num_of_oneagents_from_other_zones = 16
  num_of_oneagents_using            = 16
}
