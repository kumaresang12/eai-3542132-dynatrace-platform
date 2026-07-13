resource "dynatrace_network_zone" "fdxf_wtc_devtest_cc" {
  name                              = "fdxf.wtc.devtest_cc.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 819
  num_of_oneagents_from_other_zones = 32
  num_of_oneagents_using            = 851
}
