resource "aws_memorydb_cluster" "example" {
  acl_name                 = var.cluster.acl_name
  name                     = var.cluster.name
  node_type                = var.cluster.node_type
  kms_key_arn              = var.kms_key_arn
  num_shards               = var.cluster.num_shards
  security_group_ids       = var.security_group_ids
  snapshot_retention_limit = var.cluster.snapshot_retention_limit
  subnet_group_name        = aws_memorydb_subnet_group.example.id
  tls_enabled              = var.cluster.tls_enabled
}
