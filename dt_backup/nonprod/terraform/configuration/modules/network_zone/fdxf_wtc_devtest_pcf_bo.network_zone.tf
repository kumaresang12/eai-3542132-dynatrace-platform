resource "dynatrace_network_zone" "fdxf_wtc_devtest_pcf_bo" {
  name                              = "fdxf.wtc.devtest_pcf_bo.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 4
  num_of_configured_oneagents       = 0
  num_of_oneagents_from_other_zones = 66
  num_of_oneagents_using            = 66
}
