resource "oci_kms_encrypted_data" "kms_encrypted_data" {
  for_each = var.kms_encrypted_data

  crypto_endpoint      = each.value.crypto_endpoint
  key_id               = each.value.key_id
  plaintext            = each.value.plaintext
  associated_data      = each.value.associated_data
  encryption_algorithm = each.value.encryption_algorithm
  key_version_id       = each.value.key_version_id
  logging_context      = each.value.logging_context

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

