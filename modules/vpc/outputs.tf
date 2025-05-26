
output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnets[*].id
}

output "private_subnets_first_two" {
  value = slice(aws_subnet.private_subnets[*].id, 0, 2)
}

output "private_subnets_last_two" {
  value = slice(aws_subnet.private_subnets[*].id, 2,4)
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

output "web_alb_sg" {
  value = aws_security_group.web_alb_sg.id
}

output "web_sg" {
    value = aws_security_group.web_sg.id
}

output "app_alb_sg" {
  value = aws_security_group.app_alb_sg.id
}

output "app_sg" {
  value = aws_security_group.app_sg.id
}

