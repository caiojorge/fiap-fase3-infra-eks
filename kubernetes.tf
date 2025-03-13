#####################
# RDS Subnet Group
#####################
# resource "aws_db_subnet_group" "default" {
#   name       = "rds-subnet-group"
#   subnet_ids = aws_subnet.eks_private_subnet[*].id  # Usando as subnets privadas do EKS

#   tags = {
#     Name = "rds-subnet-group"
#   }
# }

#####################
# RDS Security Group
#####################
# resource "aws_security_group" "rds_sg" {
#   vpc_id = aws_vpc.eks_vpc.id

#   ingress {
#     from_port   = 3306
#     to_port     = 3306
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Permite acesso público (ajuste conforme necessário)
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "rds-security-group"
#   }
# }

#####################
# RDS Instance
#####################
# resource "aws_db_instance" "default" {
#   allocated_storage      = var.db_allocated_storage
#   engine                 = "mysql"
#   engine_version         = "8.0.40"
#   instance_class         = var.db_instance_class
#   db_name                = var.db_name
#   username               = var.db_username
#   password               = var.db_password
#   parameter_group_name   = "default.mysql8.0"
#   skip_final_snapshot    = true
#   publicly_accessible    = true  # Banco de dados público
#   db_subnet_group_name   = aws_db_subnet_group.default.name
#   vpc_security_group_ids = [aws_security_group.rds_sg.id]

#   tags = {
#     Name = "mysql-db-instance"
#   }
# }

# resource "kubernetes_secret" "rds_credentials" {
#   metadata {
#     name = "rds-credentials"
#   }

#   data = {
#     username = var.db_username
#     password = var.db_password
#     host     = aws_db_instance.default.endpoint
#   }
# }