terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "81s-remote-state-rama"
    key = "remote-state-demo"
    region  = "us-east-1"
    dynamodb_rable  = "81s-locking"
  }
}

provider "aws" {
  # configuration options
  region = "us-east-1"
}