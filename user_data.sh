#!/bin/bash
# Installs and configures Apache, then publishes the student identification page.
dnf update -y
dnf install -y httpd
systemctl enable --now httpd
 
cat > /var/www/html/index.html <<HTML
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Terraform Web Server</title>
  <style>
    body { font-family: Arial, sans-serif; background: #f4f6f8; margin: 0;
           display: flex; align-items: center; justify-content: center; height: 100vh; }
    .card { background: #fff; padding: 40px 60px; border-radius: 10px;
            box-shadow: 0 4px 16px rgba(0,0,0,.12); text-align: center; }
    h1 { color: #232f3e; margin-bottom: 8px; }
    p  { font-size: 22px; margin: 10px 0; }
    .muted { color: #666; font-size: 15px; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Web Server deployed with Terraform on AWS</h1>
    <p><strong>Full Name:</strong> GERMAIN TEGOMO NGOUNE</p>
    <p><strong>Student ID:</strong> N10038841</p>
  </div>
</body>
</html>
HTML