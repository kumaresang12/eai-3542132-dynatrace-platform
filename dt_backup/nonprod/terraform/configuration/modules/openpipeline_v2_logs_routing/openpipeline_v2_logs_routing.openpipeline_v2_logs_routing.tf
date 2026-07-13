resource "dynatrace_openpipeline_v2_logs_routing" "openpipeline_v2_logs_routing" {
  routing_entries {
    routing_entry {
      description   = "Infosec_Route"
      enabled       = true
      matcher       = "matchesValue(log.source, \"/var/log/secure\")"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGNhNzkwMmI4LWM4MjgtMzQ1Yy1hZGIyLTMxYjY0NDJlNDA5Nb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Delinea_Route"
      enabled       = true
      matcher       =<<-EOT
        (matchesValue(dt.openpipeline.source, "/api/v2/logs/ingest") AND matchesPhrase(Action.Name, "Delinea*")) OR (matchesValue(dt.openpipeline.source, "oneagent") AND matchesPhrase(fedex.eai_num, "3541754"))
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDZjMmFiY2U0LWIyNDQtMzNjMS1iM2ExLTE3ZWY2OGI3ZWQzY77vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "k8s_Route"
      enabled       = true
      matcher       = "isNotNull(k8s.cluster.uid)"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGZlODZkOGM3LWExMzktMzMzYy05YjRjLTg2NmE3YjIxMGRkNr7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "API_Ingestion_Route"
      enabled       = true
      matcher       = "matchesValue(dt.openpipeline.source, \"/api/v2/logs/ingest\")"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGM0ZTlhNTE1LTc2ZjQtM2E2OC1hMGRiLTBiOWViYzM5OGM4ZL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCF_Application_Route"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.ingest.port, "601") AND matchesValue(dt.openpipeline.source, "extension:syslog")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDczNzVmNGQ5LThmYzAtM2VjMy05OGZmLThhYzY1Y2I0MTdjOb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCF_Platform_Route"
      enabled       = true
      matcher       = "isNotNull(PcfFoundation)"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGU2MTc1YTJiLWYxYTQtM2VkYS1hNTVkLTQyMzYxYjhiZDRmOL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "rating-mod-release-route"
      enabled       = false
      matcher       =<<-EOT
        matchesValue(cf_space_name, "release")
        and matchesValue(source_type, "APP/REV/1/PROC/WEB")
        and (
          cf_app_name == "DimRatingService"
          or cf_app_name == "FXFBaseRateService"
          or cf_app_name == "FXFRatingPathOrchestrator"
          or cf_app_name == "FXFRatingPathOrchestratorJMS"
          or cf_app_name == "FXFRatingRulesOrchestrator"
          or cf_app_name == "FXFRatingRulesOrchestratorJMS"
          or cf_app_name == "FxfLegacyDataAcquisitionConfigServer"
          or cf_app_name == "FxfLegacyDataAcquisitionEast"
          or cf_app_name == "FxfLegacyDataAcquisitionWest"
          or cf_app_name == "FxfRatingComparator"
          or cf_app_name == "FxfRatingGateway"
          or cf_app_name == "FxfRatingGatewayJMS"
        )
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGIwOGM5NzUzLTMyMWEtMzA5Yi1hODMxLWIwOTM3NDAxNmMwNL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Agent Route for EAI 6068 and its OVO policy file"
      enabled       = true
      matcher       =<<-EOT
        dt.security_context == "6068" and 
        (matchesValue(log.source, "/var/fedex/eici/eicdataentry/logs/EiciCdeAgent-Error.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicrecog/logs/EiciRecogAgent-Error.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicscan/logs/EiciScanAgent-Error.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicimaging/logs/DMIAPI.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicimaging/logs/fxfLookup.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicrecog/logs/RecognitionParser.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicimaging/logs/fxfValidate.log") or 
                 matchesValue(log.source, "/var/fedex/eici/eicscan/logs/secure/logs/access")
        )
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDI3OTZkMjFjLTZlM2MtM2Y3Zi1iNjk1LTc2OTMwY2IzNGZiY77vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Agent Route for EAI 3538710 and its OVO policy file"
      enabled       = true
      matcher       =<<-EOT
        dt.security_context=="3538710" and matchesPhrase(log.source,"/var/mfcobol/es/*") and matchesPhrase(log.source,"console.log")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDA3ZTE5MjVlLWViMTktMzNlNy1iZjc0LWRjNDYzMjQ3YmQyOb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Agent Route for EAI 3540497 and its OVO policy file"
      enabled       = true
      matcher       =<<-EOT
        dt.security_context == "3540497" and 
        ((log.source == "/var/fedex/srs/xopco/logs/admin-server/admin-server.log" or 
         log.source == "/var/fedex/srs/xopco/logs/config-server/config-server.log" or 
         log.source == "/var/fedex/srs/xopco/logs/invoice-verification-batch/invoice-verification-batch.log" or 
         log.source == "/var/fedex/srs/xopco/logs/invoice-verification/invoice-verification.log") or
         (matchesValue(log.source, "/var/fedex/srs/xopco/logs/admin-server/admin-server.log.*") or 
          matchesValue(log.source, "/var/fedex/srs/xopco/logs/config-server/config-server.log.*") or
          matchesValue(log.source, "/var/fedex/srs/xopco/logs/invoice-verification-batch/invoice-verification-batch.log.*") or
          matchesValue(log.source, "/var/fedex/srs/xopco/logs/invoice-verification/invoice-verification.log.*")) 
        )
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDNiNDk5ZjgzLWYxYjgtMzcxOS04NTkxLWZlNDhlYTE5MGY5ML7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "OneAgent_Route"
      enabled       = true
      matcher       = "matchesValue(dt.openpipeline.source, \"oneagent\")"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGFlZmU1YmJmLTJiMTMtMzQxNy1iOWIwLWIyMDdlMjRkMzk3ML7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Catches all logs for which no specific routing entry is defined."
      enabled       = true
      matcher       = "true"
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDUwNTY5OTdlLTYxYjUtM2ZkZC04MmIyLThiZWQwMjlhM2ZlN77vVN4V2t6t"
      pipeline_type = "custom"
    }
  }
}
