vpc_cidr_block = "10.0.0.0/16"  
availability_zone = "eu-central-1a"

public_subnet_cidr_blocks = [
  "10.0.0.0/24",
  "10.0.1.0/24",
]

private_subnet_cidr_blocks = [
  "10.0.2.0/24",
  "10.0.3.0/24",
]

web_server_replica_count = 3
web_server_instance_type = "t3.xlarge"
mysql_instance_type = "t3.2xlarge"