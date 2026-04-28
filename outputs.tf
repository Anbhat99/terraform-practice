output "aws_ec2_ip" {
    value = aws_instance.my-instance.public_ip
    description = "The public IP address of the EC2 instance"
  
}