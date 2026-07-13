resource "dynatrace_network_zone" "aks-fxf-dna-cus-dev" {
  name                              = "aks-fxf-dna-cus-dev"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 4
  num_of_configured_oneagents       = 14
  num_of_oneagents_from_other_zones = 0
  num_of_oneagents_using            = 14
}
