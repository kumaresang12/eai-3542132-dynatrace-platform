resource "dynatrace_log_buckets" "default_database_monitoring" {
  enabled      = true
  bucket_name  = "default_database_monitoring"
  insert_after = ""
  matcher      =<<-EOT
    dt.extension.name == "com.dynatrace.extension.postgres" OR 
    dt.extension.name == "com.dynatrace.extension.sql-oracle" OR 
    dt.extension.name == "com.dynatrace.extension.sql-db2" OR 
    dt.extension.name == "com.dynatrace.extension.sql-snowflake" OR 
    dt.extension.name == "com.dynatrace.extension.sql-server" OR 
    dt.extension.name == "com.dynatrace.extension.mysql" OR 
    dt.extension.name == "com.dynatrace.extension.sql-sap-hana" OR 
    dt.extension.name == "com.dynatrace.extension.mariadb"
  EOT
  rule_name    = "Stores queries, configuration, and metadata for the Databases app"
}
