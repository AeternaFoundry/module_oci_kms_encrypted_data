variable "kms_encrypted_data" {
  description = <<EOT
Map of kms_encrypted_data, attributes below
Required:
    - crypto_endpoint
    - key_id
    - plaintext
Optional:
    - associated_data
    - encryption_algorithm
    - key_version_id
    - logging_context
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    crypto_endpoint      = string
    key_id               = string
    plaintext            = string
    associated_data      = optional(map(string))
    encryption_algorithm = optional(string)
    key_version_id       = optional(string)
    logging_context      = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

