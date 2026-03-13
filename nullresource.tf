resource "null_resource" "commands" {
  provisioner "file" {
    source      = "./script.sh"
    destination = "/home/ubuntu/script.sh"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = aws_instance.testvm.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "cd /home/ubuntu/",
      "chmod +x script.sh",
      "./script.sh"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = aws_instance.testvm.public_ip
    }

  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.testvm.public_ip} > server_ip.txt"
  }


}