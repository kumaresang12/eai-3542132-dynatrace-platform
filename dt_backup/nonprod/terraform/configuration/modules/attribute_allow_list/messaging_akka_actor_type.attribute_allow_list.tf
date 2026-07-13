resource "dynatrace_attribute_allow_list" "messaging_akka_actor_type" {
  enabled = true
  key     = "messaging.akka.actor.type"
}
