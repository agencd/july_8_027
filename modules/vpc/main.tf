resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  # cidr_block = $vpc_cidr_block
  # cidr_block = ${{ secrets.vpc_cidr_block }} sensitive
  # cidr_block = ${{ var.vpc_cidr_block }} nonsensitive
  tags = var.tag
}

variable "vpc_cidr_block" {}
variable "tag" {}

output "my_vpc_id" {
  value = aws_vpc.my_vpc.id
}
