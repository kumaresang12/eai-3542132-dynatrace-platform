resource "dynatrace_attribute_allow_list" "k8s_job_uid" {
  enabled = true
  key     = "k8s.job.uid"
}
