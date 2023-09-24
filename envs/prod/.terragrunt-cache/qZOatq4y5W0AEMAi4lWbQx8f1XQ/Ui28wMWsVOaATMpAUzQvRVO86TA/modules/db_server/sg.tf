resource "aws_security_group" "allow_mysql" {
  name_prefix = "allow_mysql"
  description = "Allow incoming MySQL traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.public_subnet_cidr_blocks
}
}

resource "aws_security_group_rule" "allow_inbound" {
  type        = "ingress"
  from_port   = 0
  to_port     = 65535
  protocol    = "tcp"
  cidr_blocks = var.public_subnet_cidr_blocks
  security_group_id = aws_security_group.allow_mysql.id
}