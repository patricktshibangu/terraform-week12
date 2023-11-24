terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
locals {
  env = "dev"
}

output "my-vars" {
  value = "locals.env"
}

module "vpc" {
  source = "github.com/patricktshibangu/terraform-week7"
}