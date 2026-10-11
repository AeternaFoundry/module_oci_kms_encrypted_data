output "kms_encrypted_data_id" {
  description = "Map of id values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no id are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_encrypted_data_associated_data" {
  description = "Map of associated_data values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no associated_data are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.associated_data if v.associated_data != null && length(v.associated_data) > 0 }
}
output "kms_encrypted_data_ciphertext" {
  description = "Map of ciphertext values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no ciphertext are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "kms_encrypted_data_crypto_endpoint" {
  description = "Map of crypto_endpoint values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no crypto_endpoint are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.crypto_endpoint if v.crypto_endpoint != null && length(v.crypto_endpoint) > 0 }
}
output "kms_encrypted_data_encryption_algorithm" {
  description = "Map of encryption_algorithm values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no encryption_algorithm are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.encryption_algorithm if v.encryption_algorithm != null && length(v.encryption_algorithm) > 0 }
}
output "kms_encrypted_data_key_id" {
  description = "Map of key_id values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no key_id are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_encrypted_data_key_version_id" {
  description = "Map of key_version_id values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no key_version_id are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.key_version_id if v.key_version_id != null && length(v.key_version_id) > 0 }
}
output "kms_encrypted_data_logging_context" {
  description = "Map of logging_context values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no logging_context are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.logging_context if v.logging_context != null && length(v.logging_context) > 0 }
}
output "kms_encrypted_data_plaintext" {
  description = "Map of plaintext values across all kms_encrypted_data, keyed the same as var.kms_encrypted_data except keys with no plaintext are omitted"
  value       = { for k, v in oci_kms_encrypted_data.kms_encrypted_data : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
}

