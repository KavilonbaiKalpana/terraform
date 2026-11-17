# AWS VPC and EC2 Deployment using Terraform

## Project Overview

This project demonstrates the creation of AWS infrastructure
using Terraform.

It creates a custom VPC with two public subnets and deploys
two Amazon Linux 2023 EC2 instances running Apache web servers.

## Technology Stack

- AWS
- Terraform
- Amazon Linux 2023
- Apache HTTP Server
- Linux Shell Scripting

## AWS Region

ap-south-1 (Mumbai)

## AWS Resources Created

1. Custom VPC
2. Two Public Subnets
3. Internet Gateway
4. Public Route Table
5. Route Table Associations
6. Security Group
7. Two EC2 Instances

## Network Configuration

VPC CIDR: 10.0.0.0/16

Public Subnet 1: 10.0.1.0/24

Public Subnet 2: 10.0.2.0/24

## Project Structure

project-vpc-ec2/
- main.tf
- variables.tf
- terraform.tfvars
- provider.tf
- userdata.sh
- userdata1.sh
- outputs.tf
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

Deploy AWS infrastructure:

terraform apply

## Verification

Check created resources:

terraform state list

Display EC2 public IPs:

terraform output public_ips

Display website URLs:

terraform output website_urls

Open both URLs in a browser to verify the Apache web servers.

## Cleanup

Destroy the created infrastructure:

terraform destroy

## Author

Kalpana

AWS Cloud and DevOps Projects
