provider "aws" {
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  azs = var.azs
  tags = var.tags

}

module "web" {
  source = "./modules/compute"
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.public_subnets
  name_prefix = var.web_name_prefix
  user_data = filebase64("./web.sh")
  isInternal = var.web_isInternal
  template_sg = [module.vpc.web_sg]
  lb_SG = [module.vpc.web_alb_sg]
}

module "backend" {
  source = "./modules/compute"
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.private_subnets_first_two
  name_prefix = var.backend_name_prefix
  user_data = filebase64("./backend.sh")
  isInternal = var.backend_isInternal
  template_sg = [module.vpc.app_sg]
  lb_SG = [module.vpc.app_alb_sg]
}


