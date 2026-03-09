# resource "aws_security_group" "terraform-sg" {
#   vpc_id = aws_vpc.prod-vpc.id
#   name = "Terraform-SG"
#   tags_all = {
#     Name = "Terraform-SG"
#   }
#   # lifecycle {
#   #   # ignore_changes = all
#   #   # create_before_destroy = false
#   #   # prevent_destroy = true
#   # }


#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
#   ingress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
  
# }