# Subnet group for RDS
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "rds_subnet_group"
  }
}

# RDS instance
resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.${var.db_engine}${var.db_engine_pggroup}"  # Adjust if needed
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  # Backup and maintenance settings
  backup_retention_period = 0
  maintenance_window      = var.db_maintenance_window

  skip_final_snapshot = true  # Skip final snapshot on deletion (for testing purposes)

  tags = {
    Name = "terraform-rds-instance"
  }
}
