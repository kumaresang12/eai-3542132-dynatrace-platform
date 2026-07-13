resource "dynatrace_log_agent_feature_flags" "environment" {
  # journald_log_detector           = false
  new_container_log_detector        = true
  # plain_iisconfiguration_detector = false
  scope                             = "environment"
  user_and_event_data               = true
}
