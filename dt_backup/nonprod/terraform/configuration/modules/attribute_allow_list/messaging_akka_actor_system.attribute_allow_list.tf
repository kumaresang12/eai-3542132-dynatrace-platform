resource "dynatrace_attribute_allow_list" "messaging_akka_actor_system" {
  enabled = true
  key     = "messaging.akka.actor.system"
}
