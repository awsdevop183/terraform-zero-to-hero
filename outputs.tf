output "vpc-id" {
  value = aws_vpc.prod-vpc.id
}
output "subnet-id" {
  value = aws_subnet.subnet-1.id

}