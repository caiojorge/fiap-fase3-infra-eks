variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "EKS node group name"
  default     = "my-eks-node-group"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "db_allocated_storage" {
  description = "Storage allocated to the RDS instance (in GB)"
  type        = number
  default     = 20
}

variable "db_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

# output "rds_endpoint" {
#   description = "Endpoint of the RDS instance"
#   value       = aws_db_instance.default.endpoint
# }

# output "rds_security_group_id" {
#   description = "Security Group ID of the RDS instance"
#   value       = aws_security_group.rds_sg.id
# }

variable "db_endpoint" {
  description = "Endpoint do RDS existente"
  type        = string
}
