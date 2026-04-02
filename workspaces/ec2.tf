resource "aws_instance" "testvm" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = aws_subnet.public-subs["sub-1"].id
  key_name      = aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]

  tags = {
    Name = var.vpc-name
  }

}

resource "aws_instance" "testvm2" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = aws_subnet.public-subs["sub-1"].id
  key_name      = aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]

  tags = {
    Name = var.vpc-name
  }

}
