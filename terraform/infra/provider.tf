terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "elshazlii-tfstate-west2a"
    region = "us-west-2"
    # region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform_locks_us-west-2"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
