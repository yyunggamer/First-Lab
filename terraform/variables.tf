variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project" {
  type    = string
  default = "myapp"
}

variable "backend_image" {
  type    = string
  #default = "yourdockerhubuser/myapp-backend:latest" # override with your Docker Hub image
}

variable "frontend_image" {
  type    = string
  #default = "yourdockerhubuser/myapp-frontend:latest" # override with your Docker Hub image
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "desired_count" {
  type    = number
  default = 1
}
