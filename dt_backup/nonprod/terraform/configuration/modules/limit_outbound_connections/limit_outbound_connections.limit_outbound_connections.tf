resource "dynatrace_limit_outbound_connections" "limit_outbound_connections" {
  allowed_outbound_connections {
    enforced  = true
    host_list = [ "fxfreight-test.oktapreview.com", "qqx36935.apps.dynatrace.com", "qqx36935.live.dynatrace.com", "*.bf.environment.api.powerplatform.com", "teams.microsoft.com", "one.digicert.com", "auth-dev.fedexfreight.com", "openam-fedexfreight-usc1-dev.id.forgerock.io", "fxfreight-test.api.identitynow.com", "console.pingone.com", "auth.pingone.com", "api.pingone.com", "*.dynatrace.com", "auth-qa.fedexfreight.com", "openam-fedexfreight-usc1-staging.id.forgerock.io", "fxfreight-test.delinea.app", "fxfreight-test.secretservercloud", "*.service-now.com" ]
  }
}
