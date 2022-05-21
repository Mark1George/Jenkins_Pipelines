output "myvpc_id" {
    value = aws_vpc.myvpc.id
}

output "vpc_cider" {
    value = aws_vpc.myvpc.cidr_block
}

output "public_sub_1id" {
    value = aws_subnet.puplicsub1.id
  
}

output "public_sub_2id" {
    value = aws_subnet.puplicsub2
  
}

output "private_sub_1id" {
    value = aws_subnet.privsub1.id
  
}

output "private_sub_2id" {
    value = aws_subnet.privsub2.id
  
}