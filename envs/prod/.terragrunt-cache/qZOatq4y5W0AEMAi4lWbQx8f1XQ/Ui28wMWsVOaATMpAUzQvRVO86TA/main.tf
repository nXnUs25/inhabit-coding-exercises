module "vpc" {
  source      = "./modules/vpc"
  aws_region  = var.aws_region
  vpc_cidr    = var.vpc_cidr_block
}

module "public_subnets" {
  source                = "./modules/public_subnet"
  vpc_id                = module.vpc.vpc_id
  public_subnet_cidrs   = var.public_subnet_cidr_blocks
  availability_zone = var.availability_zone
}

module "private_subnets" {
  source                = "./modules/private_subnet"
  vpc_id                = module.vpc.vpc_id
  private_subnet_cidrs  = var.private_subnet_cidr_blocks
  availability_zone = var.availability_zone
}

module "web_server" {
  source                = "./modules/web_server"
  vpc_id = module.vpc.vpc_id
  count = var.web_server_replica_count
  instance_type = var.web_server_instance_type
  subnet_id = module.public_subnets.public_subnet_ids[0]
}

module "mysql" {
  source                = "./modules/db_server"
  vpc_id = module.vpc.vpc_id
  instance_type = var.mysql_instance_type
  subnet_id = module.public_subnets.public_subnet_ids[0]
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
}