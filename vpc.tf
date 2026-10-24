module "vpc" {
  source = "git::https://github.com/bmotki382-lgtm/starbust-module.git//VPC?ref=main"

  region   = "ap-south-1"
  vpc_name = "ecs-cloudmap-vpc"
  vpc_cidr = "10.0.0.0/16"

  public_subnets = {
    public-1 = {
      cidr = "10.0.1.0/24"
      az   = "ap-south-1a"
    }
    public-2 = {
      cidr = "10.0.2.0/24"
      az   = "ap-south-1b"
    }
  }

  private_subnets = {
    private-1 = {
      cidr = "10.0.11.0/24"
      az   = "ap-south-1a"
    }
    private-2 = {
      cidr = "10.0.12.0/24"
      az   = "ap-south-1b"
    }
  }
}