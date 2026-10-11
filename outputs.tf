output "serviceendpoint_externaltfs_id" {
  description = "Map of id values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_externaltfs_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no auth_personal are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => one(v.auth_personal) if v.auth_personal != null && length(v.auth_personal) > 0 }
  sensitive   = true
}
output "serviceendpoint_externaltfs_authorization" {
  description = "Map of authorization values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_externaltfs_connection_url" {
  description = "Map of connection_url values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no connection_url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.connection_url if v.connection_url != null && length(v.connection_url) > 0 }
}
output "serviceendpoint_externaltfs_description" {
  description = "Map of description values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_externaltfs_project_id" {
  description = "Map of project_id values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_externaltfs_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}

