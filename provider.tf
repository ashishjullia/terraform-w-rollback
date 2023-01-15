terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
