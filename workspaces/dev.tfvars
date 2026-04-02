vpc-cidr = "10.0.0.0/16"
public-cidr = {
  sub-1 = "10.0.1.0/24"
  sub-2 = "10.0.2.0/24"
}
private-cidr = {
  sub-1 = "10.0.10.0/24"
  sub-2 = "10.0.20.0/24"
}
vpc-name = "Dev"
key-name = "dev-key"
ami = "ami-0c3389a4fa5bddaad"
instance-type = "t2.micro"