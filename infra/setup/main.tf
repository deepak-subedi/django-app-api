terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "devops-app-tf-state"
    key            = "tf-state-setup"
    region         = "ap-northeast-1"
    encrypt        = true
    dynamodb_table = "devops-app-tf-state-lock"
  }
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}
