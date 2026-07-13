resource "dynatrace_custom_service" "_Destination" {
  name                   = "{Destination}"
  enabled                = true
  queue_entry_point      = true
  queue_entry_point_type = "JMS"
  technology             = "java"
  rule {
    enabled = true
    class {
      name  = "com.fedex.dockyard.middletier.frontend.jms.inbound.EdenSvTopicSubscriber"
      match = "EQUALS"
    }
    method {
      name       = "processEvent"
      arguments  = [ "java.lang.String" ]
      returns    = "boolean"
      visibility = "PRIVATE"
    }
  }
}
