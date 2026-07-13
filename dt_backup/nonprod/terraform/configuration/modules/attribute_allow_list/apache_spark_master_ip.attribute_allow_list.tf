resource "dynatrace_attribute_allow_list" "apache_spark_master_ip" {
  enabled = true
  key     = "apache.spark.master.ip"
}
