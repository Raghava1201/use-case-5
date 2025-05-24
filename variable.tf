variable "ami" {
  type        = string
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "The name of the EC2 key pair"
}

variable "instance_name" {
  type        = string
  description = "The name tag for the EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "ssh_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks allowed to access SSH"
}
