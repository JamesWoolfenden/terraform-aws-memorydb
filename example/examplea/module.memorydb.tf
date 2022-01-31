module "memorydb" {
  source             = "../../"
  cluster            = var.cluster
  subnet_list        = ["subnet-04338b6369d8288a5", "subnet-0d99e0f4e4f1ff84f"]
  kms_key_arn        = aws_kms_key.example.arn
  security_group_ids = [aws_security_group.example.id]
}

resource "aws_kms_key" "example" {
  enable_key_rotation = true
}
