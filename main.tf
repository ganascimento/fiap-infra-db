provider "aws" {
  region = "us-east-2"
}

terraform {
  required_providers {
    aws = "~> 5.0"
  }

  backend "s3" {
    bucket = "vg-terraform-s3-state-fiap"
    key    = "fiap-infra-db"
    region = "us-east-2"
  }
}
