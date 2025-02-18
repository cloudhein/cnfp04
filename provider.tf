terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

# dev account
provider "aws" {
  profile = "terraform-dev-role"
}

