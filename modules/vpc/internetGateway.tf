resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.myvpc.id
  tags   = merge(var.tags, { Name = "igw" })
}