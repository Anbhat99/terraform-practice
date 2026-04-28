resource "aws_s3_bucket" "my-bucket" {
    bucket = "devops-terraform-bucket"
    tags = {
        Name = "devops-terraform-bucket"
    }
}