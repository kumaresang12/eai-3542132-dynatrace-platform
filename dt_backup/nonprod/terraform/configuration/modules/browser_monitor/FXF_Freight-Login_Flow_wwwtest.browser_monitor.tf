resource "dynatrace_browser_monitor" "FXF_Freight-Login_Flow_wwwtest" {
  name      = "FXF Freight - Login Flow (wwwtest)"
  enabled   = true
  frequency = 15
  locations = [ "GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-3E5C618F168F83BD" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage  = true
      # local_outage = false
      retry_on_error = true
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  key_performance_metrics {
    load_action_kpm = "VISUALLY_COMPLETE"
    xhr_action_kpm  = "VISUALLY_COMPLETE"
  }
  script {
    type = "clickpath"
    configuration {
      # bypass_csp           = false
      # disable_web_security = false
      monitor_frames         = false
      device {
        height          = 1080
        # mobile        = false
        # touch_enabled = false
        width           = 1920
      }
      headers {
        header {
          name  = "Aka_FedexFreight"
          value = "L6True"
        }
        header {
          name  = "FedExDynatrace"
          value = " v6UmSTfoQOAJFm0LQVIDbDowv"
        }
      }
    }
    events {
      event {
        description = "Set Akamai bypass header"
        javascript {
          code =<<-EOT
            api.setExtraHTTPHeaders({'Aka_FedexFreight': 'L6True'});
            EOT
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Navigate to FXF login page"
        navigate {
          url = "https://wwwtest.fedexfreight.com/login/"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter email address"
        keystrokes {
          # masked              = false
          # simulate_blur_event = false
          # simulate_return_key = false
          text                  = "TestUser90@gmail.com"
          target {
            locators {
              locator {
                type  = "css"
                value = "input[type='text']"
              }
              locator {
                type  = "css"
                value = "input[type='email']"
              }
              locator {
                type  = "css"
                value = "input[fdxInput]"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Submit email"
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "button[type='submit']"
              }
              locator {
                type  = "css"
                value = "button.fdx-c-button"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter password"
        keystrokes {
          masked                = true
          # simulate_blur_event = false
          # simulate_return_key = false
          text                  = "Accenture2026**"
          target {
            locators {
              locator {
                type  = "css"
                value = "input[type='password']"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Submit password"
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "button[type='submit']"
              }
              locator {
                type  = "css"
                value = "button.fdx-c-button"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter OTP code"
        keystrokes {
          masked                = true
          # simulate_blur_event = false
          # simulate_return_key = false
          text                  = "321321"
          target {
            locators {
              locator {
                type  = "css"
                value = "input[type='text']"
              }
              locator {
                type  = "css"
                value = "input[fdxInput]"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Submit OTP"
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "button[type='submit']"
              }
              locator {
                type  = "css"
                value = "button.fdx-c-button"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Validate login success"
        javascript {
          code = "if (document.location.href.indexOf('/login') !== -1) { throw 'Still on login page — login may have failed'; }"
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "project"
      source  = "USER"
      value   = "fxf-freight"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "login-flow"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "team"
      source  = "USER"
      value   = "SRE"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "tier"
      source  = "USER"
      value   = "1"
    }
  }
}
