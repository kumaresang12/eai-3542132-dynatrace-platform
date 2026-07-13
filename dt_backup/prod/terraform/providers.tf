terraform {
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = "~> 1.99"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}
