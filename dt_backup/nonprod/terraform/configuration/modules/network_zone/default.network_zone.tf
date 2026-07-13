resource "dynatrace_network_zone" "default" {
  name                              = "default"
  description                       = "The default network zone. This is the network zone for OneAgents or ActiveGates that do not have any network zone configured."
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 0
  num_of_configured_oneagents       = 261
  num_of_oneagents_from_other_zones = 0
  num_of_oneagents_using            = 0
}
