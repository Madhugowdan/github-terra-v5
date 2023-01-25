terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }


  backend "s3" {
    region = "eu-central-1"
    key    = "tf-state-file"
  }
}



provider "aws" {
  region = "eu-central-1"
}