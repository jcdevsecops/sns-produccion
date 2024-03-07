terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
  required_version = ">1.3.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  default_tags {
    tags = {
      Environment = "pq"
    }
  }
}