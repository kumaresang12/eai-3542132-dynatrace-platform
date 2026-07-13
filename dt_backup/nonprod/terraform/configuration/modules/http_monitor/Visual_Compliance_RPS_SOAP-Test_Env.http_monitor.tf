resource "dynatrace_http_monitor" "Visual_Compliance_RPS_SOAP-Test_Env" {
  name      = "Visual Compliance RPS SOAP - Test Env"
  enabled   = true
  frequency = 15
  locations = [ "GEOLOCATION-F1DDD2B371612F65", "GEOLOCATION-716844F67F8B2CA0" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  script {
    request {
      description = "Visual Compliance RPS SOAP - Test Env"
      body        =<<-EOT
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                                xmlns:ns="http://eim.visualcompliance.com/RPSService/2016/11">
                 <soapenv:Header/>
                 <soapenv:Body>
                 
                   <ns:SearchAddressV2>
                     <ns:sdoc>
                 
                       <ns:sguid></ns:sguid>
                      <ns:stransid>887888341046_2461055000</ns:stransid>
                      <ns:ssecno>7OOHY</ns:ssecno>
                      <ns:spassword>337AQX914</ns:spassword>
                       <ns:smodes></ns:smodes>
                      <ns:srpsgroupbypass></ns:srpsgroupbypass>
                 
                       <ns:searches>
                 
                         <ns:search>
                          <ns:soptionalid>667888341046</ns:soptionalid>
                           <ns:sname>JOHN SMITH</ns:sname>
                           <ns:scompany>JOHN SMITH</ns:scompany>
                           <ns:saddress1>1201 3rd Ave</ns:saddress1>
                           <ns:saddress2>Suite 4900</ns:saddress2>
                          <ns:saddress3></ns:saddress3>
                          <ns:scity>SEATTLE</ns:scity>
                          <ns:sstate>WA</ns:sstate>
                          <ns:szip>98101</ns:szip>
                          <ns:scountry>US</ns:scountry>
                 
                          <ns:selective1>{"PRTP":"S","ORIG":"US","DEST":"CA"}</ns:selective1>
                          <ns:selective2>{"TMSP":"260114044045838145","CONS":"EMILY CLARK, ,  100 King St W TORONTO ON CA"}</ns:selective2>
                          <ns:selective3></ns:selective3>
                          <ns:selective4>{"CSTY":"FXF","TXID":"667888341046_2461055000_260114044045838145_1009_ADDR","DRID":"1009"}</ns:selective4>
                           <ns:selective5>FPJ Hydrogel Cooling Facial Mask</ns:selective5>
                           <ns:selective6>Nabota Facial Care Powder</ns:selective6>
                          <ns:selective7></ns:selective7>
                          <ns:selective8></ns:selective8>
                         </ns:search>
                 
                         <ns:search>
                          <ns:soptionalid>667888341046</ns:soptionalid>
                           <ns:sname>EMILY CLARK</ns:sname>
                          <ns:scompany></ns:scompany>
                           <ns:saddress1>100 King St W</ns:saddress1>
                          <ns:saddress2></ns:saddress2>
                          <ns:saddress3></ns:saddress3>
                          <ns:scity>TORONTO</ns:scity>
                          <ns:sstate>ON</ns:sstate>
                           <ns:szip>M5X 1A9</ns:szip>
                          <ns:scountry>CA</ns:scountry>
                 
                          <ns:selective1>{"PRTP":"C","ORIG":"US","DEST":"CA"}</ns:selective1>
                          <ns:selective2>{"TMSP":"260114044045838145","SHIP":"JOHN SMITH, JOHN SMITH,  1201 3rd Ave Suite 4900 SEATTLE WA US"}</ns:selective2>
                          <ns:selective3></ns:selective3>
                          <ns:selective4>{"CSTY":"FXF","TXID":"667888341046_2461055000_260114044045838145_1001_ADDR","DRID":"1001"}</ns:selective4>
                           <ns:selective5>FPJ Hydrogel Cooling Facial Mask</ns:selective5>
                           <ns:selective6>Nabota Facial Care Powder</ns:selective6>
                          <ns:selective7></ns:selective7>
                          <ns:selective8></ns:selective8>
                         </ns:search>
                 
                       </ns:searches>
                 
                     </ns:sdoc>
                   </ns:SearchAddressV2>
                 
                 </soapenv:Body>
                </soapenv:Envelope>
                EOT
      method      = "POST"
      url         = "https://rps88test.visualcompliance.com/RPS/RPSService.svc/SOAP"
      authentication {
        type        = "BASIC_AUTHENTICATION"
        credentials = "CREDENTIALS_VAULT-63084C74F0FD9AEB"
      }
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
        headers {
          header {
            name  = "Content-Type"
            value = "text/xml; charset=utf-8"
          }
          header {
            name  = "SOAPAction"
            value = "\"http://eim.visualcompliance.com/RPSService/2016/11/RPSService/SearchAddressV2\""
          }
        }
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
  }
}
