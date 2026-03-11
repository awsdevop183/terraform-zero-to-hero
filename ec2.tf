resource "aws_instance" "testvm" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.medium"
    subnet_id = aws_subnet.public-subs["sub-1"].id
    key_name = aws_key_pair.key.key_name
    security_groups = [aws_security_group.terraform-sg.id]

  
}