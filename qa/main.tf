module "vpc" {
  source = "/home/ec2-user/terraform_web_module/modules/vpc"
  env    = "qa"
}

module "asg" {
  env                = "qa"
  source             = "/home/ec2-user/terraform_web_module/modules/asg"
  tg_arn             = module.alb.tg_arn
  vpc_id             = module.vpc.vpc_id
  aws_private_subnet = module.vpc.aws_private_subnet[*]
  aws_public_subnets = module.vpc.aws_public_subnets[*]
}

module "alb" {
  env                = "qa"
  source             = "/home/ec2-user/terraform_web_module/modules/alb"
  vpc_id             = module.vpc.vpc_id
  aws_private_subnet = module.vpc.aws_private_subnet[*]
}