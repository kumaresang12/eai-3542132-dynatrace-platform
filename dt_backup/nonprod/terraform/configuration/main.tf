module "activegate_token" {
  source = "./modules/activegate_token"
}

module "activegate_updates" {
  source = "./modules/activegate_updates"
}

module "alerting" {
  source = "./modules/alerting"
}

module "api_detection" {
  source = "./modules/api_detection"
}

module "application_detection_rule" {
  source = "./modules/application_detection_rule"
}

module "application_error_rules" {
  source = "./modules/application_error_rules"
}

module "attribute_allow_list" {
  source = "./modules/attribute_allow_list"
}

module "attribute_masking" {
  source = "./modules/attribute_masking"
}

module "attributes_preferences" {
  source = "./modules/attributes_preferences"
}

module "audit_log" {
  source = "./modules/audit_log"
}

module "autotag_v2" {
  source = "./modules/autotag_v2"
}

module "browser_monitor" {
  source = "./modules/browser_monitor"
}

module "browser_monitor_performance" {
  source = "./modules/browser_monitor_performance"
}

module "business_events_capturing_variants" {
  source = "./modules/business_events_capturing_variants"
}

module "cloud_foundry" {
  source = "./modules/cloud_foundry"
}

module "cloudapp_workloaddetection" {
  source = "./modules/cloudapp_workloaddetection"
}

module "credentials" {
  source = "./modules/credentials"
}

module "custom_service" {
  source = "./modules/custom_service"
}

module "custom_service_order" {
  source = "./modules/custom_service_order"
}

module "davis_anomaly_detectors" {
  source = "./modules/davis_anomaly_detectors"
}

module "davis_copilot" {
  source = "./modules/davis_copilot"
}

module "default_launchpad" {
  source = "./modules/default_launchpad"
}

module "devobs_agent_optin" {
  source = "./modules/devobs_agent_optin"
}

module "discovery_default_rules" {
  source = "./modules/discovery_default_rules"
}

module "disk_edge_anomaly_detectors" {
  source = "./modules/disk_edge_anomaly_detectors"
}

module "email_notification" {
  source = "./modules/email_notification"
}

module "endpoint_detection_rules" {
  source = "./modules/endpoint_detection_rules"
}

module "failure_detection_rule_sets" {
  source = "./modules/failure_detection_rule_sets"
}

module "generic_relationships" {
  source = "./modules/generic_relationships"
}

module "generic_types" {
  source = "./modules/generic_types"
}

module "grail_security_context" {
  source = "./modules/grail_security_context"
}

module "histogram_metrics" {
  source = "./modules/histogram_metrics"
}

module "host_anomalies_v2" {
  source = "./modules/host_anomalies_v2"
}

module "host_monitoring_mode" {
  source = "./modules/host_monitoring_mode"
}

module "host_naming" {
  source = "./modules/host_naming"
}

module "host_naming_order" {
  source = "./modules/host_naming_order"
}

module "http_monitor" {
  source = "./modules/http_monitor"
}

module "http_monitor_outage" {
  source = "./modules/http_monitor_outage"
}

module "http_monitor_performance" {
  source = "./modules/http_monitor_performance"
}

module "infraops_app_settings" {
  source = "./modules/infraops_app_settings"
}

module "k8s_cluster_anomalies" {
  source = "./modules/k8s_cluster_anomalies"
}

module "k8s_node_anomalies" {
  source = "./modules/k8s_node_anomalies"
}

module "k8s_pvc_anomalies" {
  source = "./modules/k8s_pvc_anomalies"
}

module "k8s_workload_anomalies" {
  source = "./modules/k8s_workload_anomalies"
}

module "key_requests" {
  source = "./modules/key_requests"
}

module "kubernetes" {
  source = "./modules/kubernetes"
}

module "kubernetes_app" {
  source = "./modules/kubernetes_app"
}

module "kubernetes_enrichment" {
  source = "./modules/kubernetes_enrichment"
}

module "kubernetes_spm" {
  source = "./modules/kubernetes_spm"
}

module "limit_outbound_connections" {
  source = "./modules/limit_outbound_connections"
}

module "log_agent_feature_flags" {
  source = "./modules/log_agent_feature_flags"
}

module "log_buckets" {
  source = "./modules/log_buckets"
}

module "log_custom_source" {
  source = "./modules/log_custom_source"
}

module "log_events" {
  source = "./modules/log_events"
}

module "log_metrics" {
  source = "./modules/log_metrics"
}

module "log_oneagent" {
  source = "./modules/log_oneagent"
}

module "log_processing" {
  source = "./modules/log_processing"
}

module "log_sensitive_data_masking" {
  source = "./modules/log_sensitive_data_masking"
}

module "log_storage" {
  source = "./modules/log_storage"
}

module "log_timestamp" {
  source = "./modules/log_timestamp"
}

module "management_zone_v2" {
  source = "./modules/management_zone_v2"
}

module "metric_events" {
  source = "./modules/metric_events"
}

module "mobile_app_enablement" {
  source = "./modules/mobile_app_enablement"
}

module "msteams_connection" {
  source = "./modules/msteams_connection"
}

module "nettracer" {
  source = "./modules/nettracer"
}

module "network_monitor" {
  source = "./modules/network_monitor"
}

module "network_zone" {
  source = "./modules/network_zone"
}

module "network_zones" {
  source = "./modules/network_zones"
}

module "oneagent_default_mode" {
  source = "./modules/oneagent_default_mode"
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
}

module "oneagent_updates" {
  source = "./modules/oneagent_updates"
}

module "openpipeline_v2_davis_events_routing" {
  source = "./modules/openpipeline_v2_davis_events_routing"
}

module "openpipeline_v2_davis_problems_routing" {
  source = "./modules/openpipeline_v2_davis_problems_routing"
}

module "openpipeline_v2_events_routing" {
  source = "./modules/openpipeline_v2_events_routing"
}

module "openpipeline_v2_logs_ingestsources" {
  source = "./modules/openpipeline_v2_logs_ingestsources"
}

module "openpipeline_v2_logs_pipelines" {
  source = "./modules/openpipeline_v2_logs_pipelines"
}

module "openpipeline_v2_logs_routing" {
  source = "./modules/openpipeline_v2_logs_routing"
}

module "openpipeline_v2_metrics_ingestsources" {
  source = "./modules/openpipeline_v2_metrics_ingestsources"
}

module "openpipeline_v2_metrics_pipelines" {
  source = "./modules/openpipeline_v2_metrics_pipelines"
}

module "openpipeline_v2_metrics_routing" {
  source = "./modules/openpipeline_v2_metrics_routing"
}

module "os_services" {
  source = "./modules/os_services"
}

module "ownership_config" {
  source = "./modules/ownership_config"
}

module "pg_alerting" {
  source = "./modules/pg_alerting"
}

module "problem_fields" {
  source = "./modules/problem_fields"
}

module "process_availability" {
  source = "./modules/process_availability"
}

module "process_group_monitoring" {
  source = "./modules/process_group_monitoring"
}

module "process_grouping_rules" {
  source = "./modules/process_grouping_rules"
}

module "process_monitoring_rule" {
  source = "./modules/process_monitoring_rule"
}

module "processgroup_naming" {
  source = "./modules/processgroup_naming"
}

module "processgroup_naming_order" {
  source = "./modules/processgroup_naming_order"
}

module "request_attribute" {
  source = "./modules/request_attribute"
}

module "request_namings" {
  source = "./modules/request_namings"
}

module "rum_host_headers" {
  source = "./modules/rum_host_headers"
}

module "rum_ip_determination" {
  source = "./modules/rum_ip_determination"
}

module "rum_ip_locations" {
  source = "./modules/rum_ip_locations"
}

module "rum_overload_prevention" {
  source = "./modules/rum_overload_prevention"
}

module "service_anomalies_v2" {
  source = "./modules/service_anomalies_v2"
}

module "service_detection_rules" {
  source = "./modules/service_detection_rules"
}

module "service_naming" {
  source = "./modules/service_naming"
}

module "service_naming_order" {
  source = "./modules/service_naming_order"
}

module "service_splitting" {
  source = "./modules/service_splitting"
}

module "slo_v2" {
  source = "./modules/slo_v2"
}

module "span_entry_point" {
  source = "./modules/span_entry_point"
}

module "synthetic_location" {
  source = "./modules/synthetic_location"
}

module "token_settings" {
  source = "./modules/token_settings"
}

module "web_app_auto_injection" {
  source = "./modules/web_app_auto_injection"
}

module "web_app_beacon_endpoint" {
  source = "./modules/web_app_beacon_endpoint"
}

module "web_app_enablement" {
  source = "./modules/web_app_enablement"
}

module "web_application" {
  source = "./modules/web_application"
}

module "webhook_notification" {
  source = "./modules/webhook_notification"
}

