resource "aws_memorydb_cluster" "example" {
  acl_name                 = "open-access"
  name                     = "my-cluster"
  node_type                = "db.t4g.small"
  kms_key_arn              = var.kms_key_arn
  num_shards               = 2
  security_group_ids       = var.security_group_ids
  snapshot_retention_limit = 7
  subnet_group_name        = aws_memorydb_subnet_group.example.id
  tls_enabled              = true
}


