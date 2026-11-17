# AWS RDS PostgreSQL Deployment using Terraform

## Project Overview

This project demonstrates the deployment of Amazon RDS
PostgreSQL using Terraform.

It creates a custom VPC, two private subnets, an RDS
DB subnet group, a security group and a PostgreSQL
database instance.

The database is deployed privately and is not
publicly accessible.

## Technology Stack

- AWS
- Terraform
- Amazon RDS
- PostgreSQL
- Amazon VPC
- Linux

## AWS Region

ap-south-1 (Mumbai)

## AWS Resources Created

1. Custom VPC
2. Two Private Subnets
3. Private Route Table
4. Route Table Associations
5. RDS DB Subnet Group
6. RDS Security Group
7. PostgreSQL RDS Instance

## Database Configuration

- Engine: PostgreSQL
- Version: 15.7
- Instance Class: db.t3.micro
- Database Name: mydatabase
- Storage: 20 GB gp3
- Port: 5432
- Public Access: Disabled
- Encryption: Enabled

## Project Structure

- provider.tf
- variables.tf
- terraform.tfvars.example
- network.tf
- security-group.tf
- rds.tf
- outputs.tf
- .gitignore
- README.md

## Deployment Steps

Initialize Terraform:

terraform init

Format Terraform files:

terraform fmt

Validate configuration:

terraform validate

Review execution plan:

terraform plan

Deploy infrastructure:

terraform apply

## Verification

Display created resources:

terraform state list

Display RDS endpoint:

terraform output rds_endpoint

Display VPC ID:

terraform output vpc_id

## Cleanup

Destroy the Terraform infrastructure:

terraform destroy

## Security

- RDS is not publicly accessible.
- Database access is restricted to the VPC CIDR.
- RDS storage encryption is enabled.
- Actual database credentials are not committed to GitHub.

## Author

Kalpana

AWS Cloud and DevOps Projects
