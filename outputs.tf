output "ec2-ip" {
    value = aws_instance.testvm.public_ip
  
}