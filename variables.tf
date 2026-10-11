variable "serviceendpoint_externaltfs" {
  description = <<EOT
Map of serviceendpoint_externaltfs, attributes below
Required:
    - connection_url
    - project_id
    - service_endpoint_name
    - auth_personal (block):
        - personal_access_token (required)
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    connection_url        = string
    project_id            = string
    service_endpoint_name = string
    description           = optional(string)
    auth_personal = object({
      personal_access_token = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_externaltfs : (
        length(v.auth_personal.personal_access_token) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

