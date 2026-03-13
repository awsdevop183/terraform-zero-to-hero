vpc-cidr = "192.168.0.0/16"
vpc-tags = "terraform-vpc"
public-cidr = {
  sub-1 = "192.168.1.0/24"
  sub-2 = "192.168.2.0/24"
}
private-cidr = {
  sub-1 = "192.168.10.0/24"
  sub-2 = "192.168.20.0/24"
}
vpc-name = "Terraform-vpc"