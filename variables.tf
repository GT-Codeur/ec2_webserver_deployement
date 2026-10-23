variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "subnet_name" {
  type    = string
  default = "webserver-subnet"
}

variable "subnet_ip" {
  type    = string
  default = "10.0.0.0/24"
}

variable "instance_name" {
  type    = string
  default = "webserver-instance"
}

variable "sg_name" {
  type    = string
  default = "webserverSG"
}

variable "sg_description" {
  type    = string
  default = "Allow HTTP traffic on port 80"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "my_ip" {
  type = string
}

variable "key_name" {
  type = string
}