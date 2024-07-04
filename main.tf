terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "web_server" {
  ami           = "ami-06c68f701d8090592" # Replace with the desired AMI ID
  instance_type = var.ec2_instance_type
  key_name = "k8s"
  tags = {
    Name = "test"
  }
}
resource "aws_instance" "web_server" {
  ami           = "ami-06c68f701d8090592" # Replace with the desired AMI ID
  instance_type = var.ec2_instance_type
  key_name = "k8s"
  tags = {
    Name = "nexus"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-06c68f701d8090592" # Replace with the desired AMI ID
  instance_type = var.ec2_instance_type
  key_name = "k8s"
  tags = {
    Name = "sonar"
  }
}

