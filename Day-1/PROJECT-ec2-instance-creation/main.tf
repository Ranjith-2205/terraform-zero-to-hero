/*provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}*/

terraform {
  /*backend "s3" {
    bucket = "rks-state-s3-testing"
    key    = "test/state_file"
    region = "us-east-1"
  }*/
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}
data "aws_region" "current" {}

data "aws_s3_bucket" "data_bucket" {
  bucket = "data-tf-testing"
}

resource "aws_instance" "Import_testing_tf" {
  instance_type = var.instance_type["dev"]
  ami           = "ami-0866a3c8686eaeeba"

}

