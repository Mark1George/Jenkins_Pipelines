resource "aws_db_subnet_group" "group-sub" {
  name       = "subnet-group"
  subnet_ids = [module.network.private_sub_1id , module.network.private_sub_2id] 
}


resource "aws_elasticache_subnet_group" "group-cash" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [module.network.private_sub_1id , module.network.private_sub_2id] 
}