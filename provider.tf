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
  region = "us-east-2"
      access_key = "AKIA2ZMIYGO3KOXDQMVL"
      secret_key = "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"
   ####  access_key = "AKIAV6J2SDIZYG4SWBUK"
   ### secret_key = "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"
}
