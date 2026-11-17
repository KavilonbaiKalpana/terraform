region       = "ap-south-1"
project_name = "project-rds-tf"

vpc_cidr = "10.0.0.0/16"

private_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

db_name                   = "mydatabase"
db_engine                 = "postgres"
db_engine_version         = "15.7"
db_parameter_group_family = "postgres15"

db_instance_class = "db.t3.micro"

db_username = "reyaz"

# Replace with a new, strong, unique password.
db_password = "REPLACE_WITH_A_NEW_STRONG_PASSWORD"

allocated_storage = 20

db_backup_retention_period = 7

db_backup_window     = "03:00-04:00"
db_maintenance_window = "sun:05:00-sun:06:00"
