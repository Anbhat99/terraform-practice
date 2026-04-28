resource "aws_dynamodb_table" "name" {
    name = "${var.my_env}-devops-terraform-table" #interpolation
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"

    attribute {
      name = "id"
      type = "S"
    }
}
