
output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnets[*].id
}

output "private_subnets" {
  value = aws_subnet.private_subnets[*].id
}


output "internet_gateway_id" {
  value = aws_internet_gateway.IGW.id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.natGateway.id
}

output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}

output "private_route_table_ids" {
  value = aws_route_table.public_rt.id
}
