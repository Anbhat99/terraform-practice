#S3 bucket

resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.my_env}-devops-terraform-bucket"
    tags = {
        Name = "${var.my_env}-devops-terraform-bucket"
        environment = var.my_env
    }
}