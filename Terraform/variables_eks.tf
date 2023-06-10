variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "eks_cluster_version" {
  description = "EKS version"
  type        = string
  default     = "1.21"
}

variable "eks_cluster_instance_type" {
  description = "Instance type for the cluster nodes"
  type        = string
  default     = "t3.medium"
}

variable "eks_cluster_desired_capacity" {
  description = "Desired capacity of the cluster (number of nodes)"
  type        = number
  default     = 2
}

variable "eks_cluster_min_size" {
  description = "Minimum size of the cluster (minimum number of nodes)"
  type        = number
  default     = 1
}

variable "eks_cluster_max_size" {
  description = "Maximum size of the cluster (maximum number of nodes)"
  type        = number
  default     = 5
}

variable "eks_cluster_subnets" {
  description = "Subnets where the cluster nodes will be deployed"
  type        = list(string)
  default     = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
}

variable "eks_cluster_security_groups" {
  description = "Security groups for the EKS cluster"
  type        = list(string)
  default     = ["sg-xxxxxxxx", "sg-yyyyyyyy"]
}

variable "eks_cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  type        = string
  default     = "arn:aws:iam::123456789012:role/my-eks-cluster-role"
}


