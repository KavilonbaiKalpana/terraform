# VPC ID
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

# Private subnet IDs
output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

# RDS identifier
output "rds_identifier" {
  description = "RDS database identifier"
  value       = aws_db_instance.postgres.identifier
}

# RDS endpoint
output "rds_endpoint" {
  description = "RDS database endpoint including port"
  value       = aws_db_instance.postgres.endpoint
}

# RDS hostname
output "rds_address" {
  description = "RDS database hostname"
  value       = aws_db_instance.postgres.address
}

# RDS port
output "rds_port" {
  description = "PostgreSQL port"
  value       = aws_db_instance.postgres.port
}

# Database name
output "rds_database_name" {
  description = "Database name"
  value       = aws_db_instance.postgres.db_name
}

# RDS security group
output "rds_security_group_id" {
  description = "RDS security group ID"
  value       = aws_security_group.rds_sg.id
}
