resource "google_compute_firewall_policy_association" "compute_firewall_policy_associations" {
  for_each = var.compute_firewall_policy_associations

  attachment_target = each.value.attachment_target
  firewall_policy   = each.value.firewall_policy
  name              = each.value.name
  deletion_policy   = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

