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

resource "aws_subnet" "subnets" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = each.value

  for_each = var.subnet-cidr

  tags_all = {
    Name = "Terraform-${each.key}"
  }
  tags = {
    Name = "Terraform-${each.key}"
  }

}




# count
# for_each


































resource "local_file" "local-test-file" {
  filename        = "./test.txt"
  content         = "VPC ID: ${aws_vpc.prod-vpc.id}"
  file_permission = "777"
  depends_on      = [aws_vpc.prod-vpc]
}



# resource "aws_s3_bucket" "remote-state" {
#   bucket = "aws365.shop-remote"
  
# }
# resource "aws_dynamodb_table" "terraform_locks" {
#   name           = "state-lock" # Unique name for your lock table
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }





# data "aws_vpc" "awsb10-vpc" {
#   id = "vpc-0da903f45fc8b746e"
# }

# resource "aws_subnet" "awsb10-subnet" {
  
#   vpc_id = data.aws_vpc.awsb10-vpc.id
#   cidr_block = "192.168.22.0/24"
#   tags = {
#     Name = "AWSB10-Terraform"
#   }
#   tags_all = {
#      Name = "AWSB10-Terraform"
#   }
# }


# terraform validate
# terraform fmt






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
