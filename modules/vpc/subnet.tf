
resource "aws_subnet" "public_subnets" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnets[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true
  tags                    = merge(var.tags, { Name = "public-subnet-${count.index + 1}" })
}

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnets)
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = var.azs[floor(count.index % 2)]
  tags              = merge(var.tags, { Name = "private-subnet-${count.index + 1}" })
}


