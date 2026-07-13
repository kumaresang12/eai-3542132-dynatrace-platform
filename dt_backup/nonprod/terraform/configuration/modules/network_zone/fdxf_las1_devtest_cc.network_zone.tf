resource "dynatrace_network_zone" "fdxf_las1_devtest_cc" {
  name                              = "fdxf.las1.devtest_cc.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 1
  num_of_configured_oneagents       = 155
  num_of_oneagents_from_other_zones = 28
  num_of_oneagents_using            = 181
}
