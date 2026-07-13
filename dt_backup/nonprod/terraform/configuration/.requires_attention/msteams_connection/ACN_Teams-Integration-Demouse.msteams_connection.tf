# ATTENTION REST API didn't provide webhook data
resource "dynatrace_msteams_connection" "ACN_Teams-Integration-Demouse" {
  name         = "ACN Teams-Integration-Demouse"
  channel_name = "AccentureObservAlertTeam"
  team_name    = "ACNDynTestAlert"
  webhook      = "$${state.secret_value}"
}
