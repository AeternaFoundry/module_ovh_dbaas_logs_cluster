variable "dbaas_logs_clusters" {
  description = <<EOT
Map of dbaas_logs_clusters, attributes below
Required:
    - service_name
Optional:
    - archive_allowed_networks
    - cluster_id
    - direct_input_allowed_networks
    - query_allowed_networks
EOT

  type = map(object({
    service_name                  = string
    archive_allowed_networks      = optional(set(string))
    cluster_id                    = optional(string)
    direct_input_allowed_networks = optional(set(string))
    query_allowed_networks        = optional(set(string))
  }))
}

