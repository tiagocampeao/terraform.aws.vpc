﻿provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../home/teste/terraform.aws.vpc"

  name = "simple-example"

  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  
  }

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

    vpc_tags = {
    Name = "vpc-name"
}

