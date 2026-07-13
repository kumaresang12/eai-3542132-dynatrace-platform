resource "dynatrace_attribute_allow_list" "messaging_akka_actor_kind" {
  enabled = true
  key     = "messaging.akka.actor.kind"
}
