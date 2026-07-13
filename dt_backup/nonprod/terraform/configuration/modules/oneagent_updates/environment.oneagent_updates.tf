resource "dynatrace_oneagent_updates" "environment" {
  scope          = "environment"
  target_version = "latest"
  update_mode    = "MANUAL"
}
