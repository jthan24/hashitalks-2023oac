terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
    }
  }
}

// Step 1: Create a stack
provider "grafana" {
  url  = "http://localhost:3000/"
  auth = var.grafana_auth
}