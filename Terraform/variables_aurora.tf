variable "aurora_cluster_name" {
  description = "Name of the Aurora cluster"
  type        = string
  default     = "my-aurora-cluster"
}

variable "aurora_engine_version" {
  description = "Version of Aurora PostgreSQL engine"
  type        = string
  default     = "10.16"
}

variable "aurora_master_username" {
  description = "Username for the Aurora PostgreSQL master user"
  type        = string
  default     = "admin"
}

variable "aurora_master_password" {
  description = "Password for the Aurora PostgreSQL master user"
  type        = string
  default     = "password"
}

variable "aurora_database_name" {
  description = "Name of the Aurora PostgreSQL database"
  type        = string
  default     = "my-database"
}

variable "aurora_subnet_ids" {
  description = "Subnet IDs where the Aurora cluster will be deployed"
  type        = list(string)
  default     = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
}

variable "aurora_security_group_ids" {
  description = "Security group IDs for the Aurora cluster"
  type        = list(string)
  default     = ["sg-xxxxxxxx", "sg-yyyyyyyy"]
}
