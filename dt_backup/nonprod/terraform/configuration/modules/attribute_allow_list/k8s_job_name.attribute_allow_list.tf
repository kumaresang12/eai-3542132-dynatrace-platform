resource "dynatrace_attribute_allow_list" "k8s_job_name" {
  enabled = true
  key     = "k8s.job.name"
}
