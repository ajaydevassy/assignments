# Create a VPC
resource "aws_vpc" "my-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "Custom VPC"
  }
}

# Create Public Subnet
resource "aws_subnet" "pub-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.cidr-public[count.index]
  availability_zone = var.az[count.index]
  count             = 2

  tags = {
    Name = "public-sub"
  }
}

# Create Private Subnet
resource "aws_subnet" "pri-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.cidr-private[count.index]
  availability_zone = var.az[count.index]
  count             = 2

  tags = {
    Name = "private-sub"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "Demo IGW"
  }
}


#creating EIP
resource "aws_eip" "eip" {

  vpc = true

  depends_on = [aws_internet_gateway.igw]

}

#creating a NAT

resource "aws_nat_gateway" "nat" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pub-subnet[0].id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.igw]

}



