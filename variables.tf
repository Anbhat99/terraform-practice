variable "dynamo_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "devops-terraform-table"
  
}

variable "ami_id"  {

  default = "ami-098e39bafa7e7303d"
  type = string
  description = "The AMI ID for the EC2 instance"
}