output "compute_firewall_policy_associations_id" {
  description = "Map of id values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no id are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_firewall_policy_associations_attachment_target" {
  description = "Map of attachment_target values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no attachment_target are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.attachment_target if v.attachment_target != null && length(v.attachment_target) > 0 }
}
output "compute_firewall_policy_associations_deletion_policy" {
  description = "Map of deletion_policy values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_firewall_policy_associations_firewall_policy" {
  description = "Map of firewall_policy values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no firewall_policy are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.firewall_policy if v.firewall_policy != null && length(v.firewall_policy) > 0 }
}
output "compute_firewall_policy_associations_name" {
  description = "Map of name values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no name are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_firewall_policy_associations_short_name" {
  description = "Map of short_name values across all compute_firewall_policy_associations, keyed the same as var.compute_firewall_policy_associations except keys with no short_name are omitted"
  value       = { for k, v in google_compute_firewall_policy_association.compute_firewall_policy_associations : k => v.short_name if v.short_name != null && length(v.short_name) > 0 }
}

