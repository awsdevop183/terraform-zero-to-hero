vpc-cidr = "10.0.0.0/16"
vpc-tags = "terraform-vpc"
list-type = ["192.168.0.0/16", "10.0.0.0/16","172.16.0.0/16"]
#               0                   1               2


tuple-type = ["192.168.0.0/16", "10.0.0.0/16"]

map-type = {
    "cidr-1" = "192.168.0.0/16"
    "cidr-2" = "10.0.0.0/16"
}

object-type = {
  check = false
  cidr = "192.168.0.0/16"
  num = 10

}