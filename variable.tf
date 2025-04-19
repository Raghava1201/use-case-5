variable "ami" {
  type        = string
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0f9de6e2d2f067fca"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "The name of the EC2 key pair"
  default     = "hcl"
}

variable "instance_name" {
  type        = string
  default     = "server"
  description = "The name tag for the EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
  default     = "vpc-06cab60814e52bf9c"
}

variable "ssh_cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "List of CIDR blocks allowed to access SSH"
}
