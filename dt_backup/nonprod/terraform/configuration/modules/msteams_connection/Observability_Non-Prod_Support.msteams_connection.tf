# ATTENTION REST API didn't provide webhook data
resource "dynatrace_msteams_connection" "Observability_Non-Prod_Support" {
  name         = "Observability Non-Prod Support"
  channel_name = "Non-Prod Support "
  team_name    = "Freight Obserability"
  webhook      = "$${state.secret_value}"
}
