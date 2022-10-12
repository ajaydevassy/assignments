# Create public route table
resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.my-vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public-RT"
  }
}

# Create Web Subnet association with pub route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub-subnet[count.index].id
  route_table_id = aws_route_table.pub-rt.id
  count          = 2
}

##Creating private route table 

resource "aws_route_table" "pri-rt" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "Private-RT"
  }

}

resource "aws_route" "private_route" {

  route_table_id = aws_route_table.pri-rt.id

  destination_cidr_block = "0.0.0.0/0"

  nat_gateway_id = aws_nat_gateway.nat.id

}

# Create association with private route table

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.pri-subnet[count.index].id
  route_table_id = aws_route_table.pri-rt.id
  count          = 2
}