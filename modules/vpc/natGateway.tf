resource "aws_eip" "eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "natGateway" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnets[0].id
  tags    = merge(var.tags, { Name = "nat-gw" })
  depends_on = [aws_internet_gateway.IGW]

}
