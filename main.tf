resource "aws_vpc" "prod" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = var.vpc-name
  }

}

resource "aws_subnet" "public-subs" {
  vpc_id                  = aws_vpc.prod.id
  for_each                = var.public-cidr
  cidr_block              = each.value
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc-name}-public-${each.key}"
  }

}

resource "aws_subnet" "private-subs" {
  vpc_id     = aws_vpc.prod.id
  for_each   = var.private-cidr
  cidr_block = each.value
  tags = {
    Name = "${var.vpc-name}-private-${each.key}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.prod.id
  tags = {
    Name = "${var.vpc-name}-IGW"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.vpc-name}-Public-RT"
  }
}




resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.prod.id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.igw.id
  # }

  tags = {
    Name = "${var.vpc-name}-Private-RT"
  }
}


resource "aws_route_table_association" "public-association" {
  route_table_id = aws_route_table.public-rt.id
  for_each       = var.public-cidr
  subnet_id      = aws_subnet.public-subs[each.key].id

}

resource "aws_route_table_association" "private-association" {
  route_table_id = aws_route_table.private-rt.id
  for_each       = var.private-cidr
  subnet_id      = aws_subnet.private-subs[each.key].id
}