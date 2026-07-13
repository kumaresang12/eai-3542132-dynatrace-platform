resource "dynatrace_kubernetes_enrichment" "environment" {
  scope = "environment"
  rules {
    rule {
      type                = "LABEL"
      # primary_grail_tag = false
      source              = "eai"
      target              = "dt.cost.product"
    }
    rule {
      type                = "LABEL"
      # primary_grail_tag = false
      source              = "eai"
      target              = "dt.security_context"
    }
  }
}
