cluster = {
  acl_name                 = "open-access"
  name                     = "my-cluster"
  node_type                = "db.t4g.small"
  num_shards               = 2
  snapshot_retention_limit = 7
}

ingress = "8.8.8.8/32"
