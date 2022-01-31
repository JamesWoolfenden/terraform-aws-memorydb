cluster = {
  acl_name                 = "open-access"
  name                     = "my-cluster"
  node_type                = "db.t4g.small"
  num_shards               = 2
  snapshot_retention_limit = 7
  tls_enabled              = true
}

ingress = "8.8.8.8/32"
vpc_id  = "vpc-032c4e15f24d3628e"
