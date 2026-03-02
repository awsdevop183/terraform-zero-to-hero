resource "aws_vpc" "prod-vpc" {
    cidr_block = "192.168.0.0/16"  
    tags_all = {
      Name = "terraform-vpc"
    }
    tags = {
        Name = "terraform-vpc"
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


# immutable = you can modify
# mutable = you can modify
# # 


# Terraform workflow

# 1. write configuration files
# 2. Terraform init
# 3. Terraform plan
# 4. terraform apply



# terraform destroy 