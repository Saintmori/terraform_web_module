output "vpc_id" {
    value = aws_vpc.vpc.id
}
output "aws_public_subnets" {
    value = aws_subnet.public_subnet[*].id
}
output "aws_private_subnet" {
    value = aws_subnet.private_subnet[*].id
}