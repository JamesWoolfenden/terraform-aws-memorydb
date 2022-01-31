resource "aws_memorydb_snapshot" "example" {
  cluster_name = aws_memorydb_cluster.example.name
  name_prefix  = aws_memorydb_cluster.example.name
  kms_key_arn  = var.kms_key_arn
}
