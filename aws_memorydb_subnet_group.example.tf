resource "aws_memorydb_subnet_group" "example" {
  name_prefix = var.cluster.name
  subnet_ids  = var.subnet_list
  tags        = var.common_tags
}
