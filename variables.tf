variable "compute_firewall_policy_associations" {
  description = <<EOT
Map of compute_firewall_policy_associations, attributes below
Required:
    - attachment_target
    - firewall_policy
    - name
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    attachment_target = string
    firewall_policy   = string
    name              = string
    deletion_policy   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

