resource "dynatrace_network_zone" "fedex_las1_ute_cc" {
  name                              = "fedex.las1.ute_cc.0"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 1
  num_of_configured_oneagents       = 0
  num_of_oneagents_from_other_zones = 101
  num_of_oneagents_using            = 101
}
