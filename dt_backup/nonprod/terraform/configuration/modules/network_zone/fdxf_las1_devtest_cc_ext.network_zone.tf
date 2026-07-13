resource "dynatrace_network_zone" "fdxf_las1_devtest_cc_ext" {
  name                              = "fdxf.las1.devtest_cc_ext.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 2
  num_of_configured_oneagents       = 0
  num_of_oneagents_from_other_zones = 50
  num_of_oneagents_using            = 50
}
