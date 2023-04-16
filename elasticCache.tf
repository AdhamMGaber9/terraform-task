resource "aws_elasticache_subnet_group" "elasticCache_group" {
  name       = "cache-subnet"
  
  subnet_ids = [module.my_network.pri_sub_1 ,module.my_network.pri_sub_2]
}
resource "aws_elasticache_cluster" "terraformECache" {
  cluster_id           = "redis-cluster"
  engine               = "redis"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  port                 = 6379
  subnet_group_name = aws_elasticache_subnet_group.elasticCache_group.name
}
# resource "aws_elasticache_cluster" "redis" {
#   cluster_id           = "redis-cluster"
#   engine               = "redis"
#   node_type            = "cache.t4g.micro"
#   num_cache_nodes      = 1
#   # parameter_group_name = "default.redis3.2"
#   # engine_version       = "5.0.6"
#   port                 = 6379
#   num_cache_nodes = 1
#   subnet_group_name = aws_elasticache_subnet_group.elasticCache_group.name
#   security_group_ids = [ aws_security_group.redis-sg.id ]
# }