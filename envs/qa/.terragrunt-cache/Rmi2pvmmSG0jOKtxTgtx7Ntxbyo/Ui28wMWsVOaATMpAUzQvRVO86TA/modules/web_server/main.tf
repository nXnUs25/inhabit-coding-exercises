resource "aws_instance" "web_server" {
  count         = var.replica_count
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  security_groups = [aws_security_group.allow_ingress.id]

  tags = {
    Name = "web server"
    System = "ubuntu"
  }
}