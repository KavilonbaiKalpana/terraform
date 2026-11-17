output "vpc_id" {
  description = "Created VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Created public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "instance_ids" {
  description = "Created EC2 instance IDs"
  value       = aws_instance.web[*].id
}

output "public_ips" {
  description = "EC2 public IP addresses"
  value       = aws_instance.web[*].public_ip
}

output "website_urls" {
  description = "Apache web server URLs"

  value = [
    for instance in aws_instance.web :
    "http://${instance.public_ip}"
  ]
}
