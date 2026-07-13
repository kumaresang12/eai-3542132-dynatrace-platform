resource "dynatrace_kubernetes" "aks-fxf-dna-cus-dev" {
  enabled            = true
  cluster_id         = "75a51b9d-0ef8-4f4c-a28f-39fd7e6876c7"
  cluster_id_enabled = true
  label              = "aks-fxf-dna-cus-dev"
  scope              = "KUBERNETES_CLUSTER-8F7196574F694E65"
}
