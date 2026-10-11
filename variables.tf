variable "share_resource_lookup" {
  description = <<EOT
Map of share_resource_lookup, attributes below
Required:
    - account_id
    - share_id
Optional:
    - filter
    - share_resource_id
EOT

  type = map(object({
    account_id = string
    share_id   = string
    filter = optional(object({
      resource_type = optional(string)
      status        = optional(string)
    }))
    share_resource_id = optional(string)
  }))
}

