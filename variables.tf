variable "cluster" {
  type = object({
    acl_name                 = string
    name                     = string
    node_type                = string
    num_shards               = number
    snapshot_retention_limit = number
    tls_enabled              = bool
  })
}

variable "subnet_list" {
  type = list(string)
}

variable "kms_key_arn" {
  type = string
}


variable "security_group_ids" {
  type = list(string)
}
