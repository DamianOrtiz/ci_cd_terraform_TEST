# main.tf

# Configure the AWS provider
provider "aws" {
  region = "us-west-2"  # Replace with your desired region
}

# Create the EKS cluster
resource "aws_eks_cluster" "eks_cluster" {
  name     = "my-eks-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = "1.21"  # Replace with your desired EKS version

  vpc_config {
    subnet_ids = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]  # Replace with your desired subnet IDs
  }
}

# Create the Aurora PostgreSQL database
resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier            = "my-aurora-cluster"
  engine                        = "aurora-postgresql"
  engine_version                = "10.16"  # Replace with your desired Aurora version
  database_name                 = "my-database"
  master_username               = "admin"
  master_password               = "password"
  backup_retention_period       = 7
  preferred_backup_window       = "07:00-09:00"
  preferred_maintenance_window  = "sun:05:00-sun:06:00"
  vpc_security_group_ids        = [aws_security_group.aurora_sg.id]
  db_subnet_group_name          = aws_db_subnet_group.aurora_subnet_group.name

  tags = {
    Name = "my-aurora-cluster"
  }
}

resource "aws_security_group" "aurora_sg" {
  name        = "my-aurora-cluster-sg"
  description = "Security group for Aurora cluster"

  vpc_id = "vpc-xxxxxxxx"  # Replace with your desired VPC ID

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "my-aurora-subnet-group"
  subnet_ids = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]  # Replace with your desired subnet IDs
}
