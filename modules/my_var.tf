variable "my_env" {
    description = "The env of infrastructure"
    type = string
  
}

variable "ami_id" {
    description = "value"
    type = string
  
}

variable "instance_type" {
    description = "Type of EC2 instanceS"
    type = string
  
}

variable "instance_count" {
    description = "Number of EC2 instances to create"
    type = number
  
}
  