resource "aws_instance" "testvm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.public-subs["sub-1"].id
  key_name      = aws_key_pair.key.key_name
  # security_groups = [aws_security_group.terraform-sg.id]
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]

  tags = {
    Name = "Terraform-Demo"
  }

  #   user_data = <<-EOF
  #     #!/bin/bash
  #     apt update -y
  #     apt install nginx -y
  #     cd /var/www/html
  #     echo "<html><h1>Hello Cloud Gurus Welcome To My Webpage</h1></html>" > index.html
  #   EOF


  provisioner "file" {
    source      = "./script.sh"
    destination = "/home/ubuntu/"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = self.public_ip
    }
  }





}