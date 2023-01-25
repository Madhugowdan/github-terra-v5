terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
 
 backend "s3" {
   region = "eu-central-1"
   #key    = "ts-state-file"

 }
}
 
provider "aws" {
 region = "eu-central-1"
}
 
resource "aws_instance" "test_instance" {
 ami           = "ami-0a261c0e5f51090b1"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}