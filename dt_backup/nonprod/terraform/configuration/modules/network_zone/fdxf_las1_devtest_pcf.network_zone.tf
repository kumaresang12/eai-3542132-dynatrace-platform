resource "dynatrace_network_zone" "fdxf_las1_devtest_pcf" {
  name                              = "fdxf.las1.devtest_pcf.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 497
  num_of_oneagents_from_other_zones = 35
  num_of_oneagents_using            = 532
}
