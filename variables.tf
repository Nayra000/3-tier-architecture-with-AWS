variable "region" {
  type = string
}


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "key_name" {
    type = string 
}

# Launch Template
variable "web_name_prefix" {
  type = string 
}


variable "web_isInternal" {
  type = bool
}



# AutoScaling Group
variable "asg_min_size" { default = 1 }
variable "asg_max_size" { default = 3 }
variable "asg_desired_capacity" { default = 2 }


variable "backend_name_prefix" {
  type = string
}

variable "backend_isInternal" {
  type = bool
}