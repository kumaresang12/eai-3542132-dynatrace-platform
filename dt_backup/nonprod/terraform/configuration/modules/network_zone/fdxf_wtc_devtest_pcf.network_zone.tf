resource "dynatrace_network_zone" "fdxf_wtc_devtest_pcf" {
  name                              = "fdxf.wtc.devtest_pcf.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 5
  num_of_configured_oneagents       = 590
  num_of_oneagents_from_other_zones = 108
  num_of_oneagents_using            = 598
}
