# terraform.tfvars

# Variables del clúster EKS
eks_cluster_name            = "my-eks-cluster"
eks_cluster_version         = "1.21"
eks_cluster_instance_type   = "t3.medium"
eks_cluster_desired_capacity = 2
eks_cluster_min_size        = 1
eks_cluster_max_size        = 5
eks_cluster_subnets         = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
eks_cluster_security_groups = ["sg-xxxxxxxx", "sg-yyyyyyyy"]
eks_cluster_role_arn        = "arn:aws:iam::123456789012:role/my-eks-cluster-role"

# Variables de Aurora PostgreSQL
aurora_cluster_name         = "my-aurora-cluster"
aurora_engine_version       = "10.16"
aurora_master_username      = "admin"
aurora_master_password      = "password"
aurora_database_name        = "my-database"
aurora_subnet_ids           = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
aurora_security_group_ids   = ["sg-xxxxxxxx", "sg-yyyyyyyy"]
