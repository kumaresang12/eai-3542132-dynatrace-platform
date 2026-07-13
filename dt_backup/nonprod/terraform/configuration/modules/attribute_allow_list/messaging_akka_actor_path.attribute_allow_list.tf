resource "dynatrace_attribute_allow_list" "messaging_akka_actor_path" {
  enabled = true
  key     = "messaging.akka.actor.path"
}
