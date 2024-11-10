module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "alb" {
  source          = "./modules/alb"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
}

module "ec2" {
  source          = "./modules/ec2"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  alb_target_group_arn = module.alb.target_group_arn
}