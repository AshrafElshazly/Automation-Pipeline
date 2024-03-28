module "networks" {
  source    = "../modules/networks"
  region    = var.region
  ec2_sg_id = module.instances.ec2_sg_id
  az        = var.az
}

module "instances" {
  source           = "../modules/instances"
  vpc_id           = module.networks.vpc_id
  public_subnet_id = module.networks.public_subnet_id
  ami              = var.ami
  key_name         = var.key_name
  userdata         = file("./userdata.sh")
}

module "ecr" {
  source = "../modules/ECR"
}
