#!/bin/bash

set -euxo pipefail

# Update packages
dnf update -y

# Install Apache
dnf install -y httpd

# Start and enable Apache
systemctl enable --now httpd

# Create website
cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
    <title>VPC Web Server 2</title>
</head>
<body style="text-align:center; font-family:Arial;">

    <h1>Welcome to Web Server 2</h1>

    <h2>Amazon Linux 2023</h2>

    <h3>Terraform VPC Project</h3>

    <p>Apache Web Server is running successfully!</p>

    <p>Public Subnet 2</p>

</body>
</html>
HTML
