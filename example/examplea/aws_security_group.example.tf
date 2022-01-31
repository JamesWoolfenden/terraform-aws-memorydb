resource "aws_security_group" "example" {
  # checkov:skip=CKV2_AWS_5: used in module
  description = "Firewall for MemoryDB"
  name_prefix = "memorydb"

  ingress {
    description = "Redis compatibility"
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = [var.ingress]
  }

  egress {
    description      = "Open Outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  vpc_id = var.vpc_id
}
