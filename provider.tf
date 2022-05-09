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
      access_key = "AKIA2ZMIYGO3OBHYQLJG"
      secret_key = "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"
 
}
