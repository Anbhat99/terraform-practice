#keypair
resource "aws_key_pair" "deploy" {
  key_name   = "terraform-devops-keypair"
  public_key = file("terraform-devops.pub")
}


# Create a VPC
resource "aws_default_vpc" "default" {
  
}

# Create a Security Group
resource "aws_security_group" "default" {
    name = "allow_ssh_port"
    description = "Allow SSH inbound traffic"
    vpc_id = aws_default_vpc.default.id #interpolation
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] #allowing SSH from anywhere, consider restricting this in production
    
    }
    
}


resource "aws_instance" "my-instance" {
    ami           = var.ami_id     # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = "t2.micro"
    key_name     = aws_key_pair.deploy.key_name #interpolation
    security_groups = [aws_security_group.default.name] 
    tags = {
        Name = "terraform-devops-instance"
    }
}