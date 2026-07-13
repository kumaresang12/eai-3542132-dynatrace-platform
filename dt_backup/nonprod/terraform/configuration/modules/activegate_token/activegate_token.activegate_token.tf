resource "dynatrace_activegate_token" "activegate_token" {
  auth_token_enforcement_manually_enabled = true
  expiring_token_notifications_enabled    = true
}
