resource "ovh_dbaas_logs_cluster" "dbaas_logs_clusters" {
  for_each = var.dbaas_logs_clusters

  service_name                  = each.value.service_name
  archive_allowed_networks      = each.value.archive_allowed_networks
  cluster_id                    = each.value.cluster_id
  direct_input_allowed_networks = each.value.direct_input_allowed_networks
  query_allowed_networks        = each.value.query_allowed_networks
}

