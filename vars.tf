variable "grafana_auth" {
  type        = string
  description = "Value for grafana authentication (username:pass)"
}

variable "organization_name" {
  type        = string
  description = "Name of organization on grafana"
  default     = "oac-org"
}