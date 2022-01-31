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

variable "ingress" {
  type = string
}

variable "vpc_id" {
  type = string
}
