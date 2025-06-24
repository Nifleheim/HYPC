variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
#  default     = "ami-06c19207c1ab181f0"   # wajib di isi
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
#  default     = "t2.micro"
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
#  default     = ["sg-0587260e923bc8fd9"]   # wajib di isi
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
#  default     = "vm_sydney"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
# subnet-0208a7b639df7cd9d (private subnet)
# subnet-04943f2c856a61ae4 (public subnet)
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
#  default     = "armidale"
}

variable "user_data" {
  description = "User data script for instance initialization"
  type        = string
  default     = null
}

variable "additional_tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {}
}


