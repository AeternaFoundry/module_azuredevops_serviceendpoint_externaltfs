output "serviceendpoint_externaltfs_id" {
  description = "Map of id values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.id }
}
output "serviceendpoint_externaltfs_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => one(v.auth_personal) }
  sensitive   = true
}
output "serviceendpoint_externaltfs_authorization" {
  description = "Map of authorization values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.authorization }
}
output "serviceendpoint_externaltfs_connection_url" {
  description = "Map of connection_url values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.connection_url }
}
output "serviceendpoint_externaltfs_description" {
  description = "Map of description values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.description }
}
output "serviceendpoint_externaltfs_project_id" {
  description = "Map of project_id values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.project_id }
}
output "serviceendpoint_externaltfs_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_externaltfs, keyed the same as var.serviceendpoint_externaltfs"
  value       = { for k, v in azuredevops_serviceendpoint_externaltfs.serviceendpoint_externaltfs : k => v.service_endpoint_name }
}

