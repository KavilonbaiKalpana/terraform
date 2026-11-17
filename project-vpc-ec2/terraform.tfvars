aws_region    = "ap-south-1"
project_name  = "kalpana-vpc-ec2"
instance_type = "t3.micro"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

# Replace with your actual public IP
ssh_allowed_cidr = "YOUR_PUBLIC_IP/32"

# Optional: Existing EC2 key pair
# key_pair_name = "your-keypair-name"
