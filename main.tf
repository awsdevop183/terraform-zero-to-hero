resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.vpc-cidr
  enable_dns_hostnames = true
  tags_all = {
    Name = "terraform-vpc"
  }
  tags = {
    Name = var.vpc-tags
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.prod-vpc.id #Implicit Dependency
  cidr_block = var.subnet-cidr

}


resource "local_file" "localfile" {
  filename        = "./test.txt"
  content         = "VPC ID: ${aws_vpc.prod-vpc.id}"
  file_permission = "777"
  depends_on      = [aws_vpc.prod-vpc]
}











# local = provider
# file = resource_type
# cidr_block = argument

# prod-vpc = resource name
# aws = provider
# vpc = resource_type


# filename and content = argument


# immutable = you can not modify
# mutable = you can modify
# # 


# Terraform workflow

# 1. write configuration files
# 2. Terraform init
# 3. Terraform plan
# 4. terraform apply



# terraform destroy 
