variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}

# Launch Template
variable "name_prefix" {
  type = string 
}
variable "user_data" {
  type = string
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

variable "template_sg" {
  type = list(string)
}

# Target Group
variable "vpc_id" {
  type = string
}

# Load Balancer
variable "subnets" {
    type = list(string)
  
}

variable "lb_SG" {
  type = list(string)
}

variable "isInternal" {
  type = bool
}
# AutoScaling Group
variable "asg_min_size" { default = 1 }
variable "asg_max_size" { default = 3 }
variable "asg_desired_capacity" { default = 2 }