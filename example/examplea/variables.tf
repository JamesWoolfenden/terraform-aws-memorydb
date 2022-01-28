variable "cluster" {
  type = object({
    acl_name                 = string
    name                     = string
    node_type                = string
    num_shards               = number
    snapshot_retention_limit = number
  })
}
variable "ingress" {
  type = string

}
