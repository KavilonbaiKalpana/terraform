# Create PostgreSQL RDS instance
resource "aws_db_instance" "postgres" {

  # Database identifier
  identifier = "${var.project_name}-postgres"

  # Database engine configuration
  engine         = var.db_engine
  engine_version = var.db_engine_version

  # Instance configuration
  instance_class = var.db_instance_class

  # Database details
  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  # Storage configuration
  allocated_storage = var.allocated_storage
  storage_type      = "gp3"
  storage_encrypted = true

  # Parameter group
  parameter_group_name = "default.${var.db_parameter_group_family}"

  # Network configuration
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  publicly_accessible = false

  # Availability configuration
  multi_az = false

  # Backup configuration
  backup_retention_period = var.db_backup_retention_period
  backup_window           = var.db_backup_window

  # Maintenance configuration
  maintenance_window = var.db_maintenance_window

  auto_minor_version_upgrade = true

  # Deletion settings for this learning project
  deletion_protection = false
  skip_final_snapshot = true

  copy_tags_to_snapshot = true

  tags = {
    Name        = "${var.project_name}-postgres"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
