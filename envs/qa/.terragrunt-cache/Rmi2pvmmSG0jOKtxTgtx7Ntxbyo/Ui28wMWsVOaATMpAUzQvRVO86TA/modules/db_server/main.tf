resource "aws_instance" "database_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id 

  tags = {
    Name = "database_server"
    System = "ubuntu"
    DB_type = "mysql"
  }
}
