variable "aws_region" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Private Subnet"
}

variable "my_ip_with_cidr" {
  type        = string
  description = "Provide your IP eg. 104.194.51.113/32"
}

variable "public_key" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "server_name" {
  type    = string
  default = "Apache Example Server"
}