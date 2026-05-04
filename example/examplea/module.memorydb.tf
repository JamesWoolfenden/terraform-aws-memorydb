module "memorydb" {
  source             = "../../"
  cluster            = var.cluster
  subnet_list        = ["subnet-04338b6369d8288a5", "subnet-0d99e0f4e4f1ff84f"]
  kms_key_arn        = aws_kms_key.example.arn
  security_group_ids = [aws_security_group.example.id]
  common_tags        = { createdby = "jamesWoolfenden" }
}
resource "aws_kms_key" "example" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
