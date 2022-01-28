resource "aws_memorydb_subnet_group" "example" {
  name_prefix = "memorydb"
  subnet_ids       = var.subnet_list
}

