resource "aws_vpc" "prod-vpc" {
    cidr_block = "192.168.0.0/16"  
  
}
resource "local_file" "localfile" {
    filename = "terraform.txt"
    content = "Hello"
}





# local = provider
# file = resource_type
# cidr_block = argument


# aws = provider
# vpc = resource_type


# filename and content = argument


