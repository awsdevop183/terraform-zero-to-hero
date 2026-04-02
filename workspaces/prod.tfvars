vpc-cidr = "192.168.0.0/16"
public-cidr = {
  sub-1 = "192.168.1.0/24"
  sub-2 = "192.168.2.0/24"
}
private-cidr = {
  sub-1 = "192.168.10.0/24"
  sub-2 = "192.168.20.0/24"
}
vpc-name = "Prod"
key-name = "prod-key"
ami = "ami-0b6c6ebed2801a5cb"
instance-type = "t2.micro"