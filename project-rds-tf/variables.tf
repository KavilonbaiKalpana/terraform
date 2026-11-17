# AWS region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

# Project name
variable "project_name" {
  description = "Name of the RDS project"
  type        = string
  default     = "project-rds-tf"
}

# VPC CIDR
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Private subnet CIDRs
variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Exactly two private subnet CIDRs are required."
  }
}

# Database name
variable "db_name" {
  description = "Name of the PostgreSQL database"
  type        = string
  default     = "mydatabase"
}

# Database engine
variable "db_engine" {
  description = "RDS database engine"
  type        = string
  default     = "postgres"
}

# Database engine version
variable "db_engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "15.7"
}

# Parameter group family
variable "db_parameter_group_family" {
  description = "PostgreSQL parameter group family"
  type        = string
  default     = "postgres15"
}

# RDS instance class
variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

# Database username
variable "db_username" {
  description = "RDS master username"
  type        = string
  default     = "reyaz"
}

# Database password
variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

# Allocated storage
variable "allocated_storage" {
  description = "RDS storage in GB"
  type        = number
  default     = 20
}

# Backup retention
variable "db_backup_retention_period" {
  description = "Number of days to retain automated backups"
  type        = number
  default     = 7
}

# Backup window
variable "db_backup_window" {
  description = "Daily backup window in UTC"
  type        = string
  default     = "03:00-04:00"
}

# Maintenance window
variable "db_maintenance_window" {
  description = "Weekly maintenance window in UTC"
  type        = string
  default     = "sun:05:00-sun:06:00"
}
