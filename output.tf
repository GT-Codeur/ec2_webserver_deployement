output "public_ip_address" {
  value = aws_instance.web_server.public_ip
}

output "website_url" {
  description = "URL to open in a browser"
  value       = "http://${aws_instance.web_server.public_ip}"
}