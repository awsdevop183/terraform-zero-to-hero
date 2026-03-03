resource "aws_vpc" "prod-vpc" {
    # cidr_block = var.list-type[1]
    # cidr_block = var.map-type["cidr-2"]
    # cidr_block = var.tuple-type[0]
    cidr_block = var.object-type.cidr
    enable_dns_hostnames = true
    tags_all = {
      Name = "terraform-vpc"
    }
    tags = {
        Name = var.vpc-tags
    }
  
}
resource "local_file" "localfile" {
    filename = "terraform.txt"
    content = "Hello"
    file_permission = "777"
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
