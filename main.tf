terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "managed" {
  bucket = "theoboyesen-state-ops-managed-bucket"
  
  tags = {
    Name      = "Managed Bucket"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket" "example1" {
  bucket = "theoboyesen-state-ops-example1"
  
  tags = {
    Name = "Example 1"
  }
}

resource "aws_s3_bucket" "example2" {
  bucket = "theoboyesen-state-ops-example2"
  
  tags = {
    Name = "Example 2"
  }
}

resource "aws_s3_bucket" "imported" {
  bucket = "theoboyesen-state-ops-unmanaged"
  
  tags = {
    Name      = "Imported Bucket"
    ManagedBy = "Terraform"
  }
}