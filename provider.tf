# Provider Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
  region = "eu-north-1"
  
 
}


variable "access_key" {}
variable "secret_key" {}
