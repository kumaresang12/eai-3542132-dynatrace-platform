resource "dynatrace_log_processing" "SEFS_Test" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDcxZDdlZjU5LWJhMTMtMzZmOS1hM2FmLWQ5ZmI0OWY3MzViM77vVN4V2t6t"
  query        = "matchesPhrase(content, \"OutboundMessageWTC-4\")"
  rule_name    = "SEFS Test"
  processor_definition {
    rule =<<-EOT
      // 1) Extract the traceId and set Dynatrace's standard correlation field
      PARSE(content, "LD '[traceId=' [0-9A-Fa-f]{32}:trace_id ']' LD")
      | FIELDS_ADD(dt.trace_id: trace_id)
      
      // 2) Extract the shipment number from ANY of your formats using alternation
      | PARSE(
          content,
          "LD (
              ( 'Schema: ' 'SHIPMENT' punct{0,2} ' ID: ' LONG:shipment_num )
            | ( 'SHIPMENT - ' LONG:shipment_num ' - Incoming Headers:' )
            | ( '<' 'PRO_NUMBER' '>' LONG:shipment_num '</' 'PRO_NUMBER' '>' )
          ) LD"
        )
      
      // 3) Add stable aliases (only added when shipment_num was actually parsed)
      | FIELDS_ADD(shipment.number: shipment_num, pro.number: shipment_num)
    EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "2026-02-27 15:04:04 [outboundMessageWTC-4] INFO  c.f.f.b.l.OutboundMessagesListener [traceId=69a1b2649a11b4b0dab875c576395c32] - SHIPMENT - 300019401450 - Incoming Headers: {JMSXDeliveryCount=1, FX_tableName=SHIPMENT, rerouteCnt=0, JMS_TIBCO_COMPRESS=true, delivered=false, DBUpdateSeqNbr=0, JMS_TIBCO_PRESERVE_UNDELIVERED=true}"
      })
  }
}
