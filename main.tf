module "dev-app" {
    source = "./modules"
    my_env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-098e39bafa7e7303d"
    instance_count = 1
}

module "stg-app" {
    source = "./modules"
    my_env = "stg"
    instance_type = "t2.micro"
    ami_id = "ami-098e39bafa7e7303d"
    instance_count = 2
}

module "prod-app" {
    source = "./modules"
    my_env = "prod"
    instance_type = "t2.micro"
    ami_id = "ami-098e39bafa7e7303d"
    instance_count = 3
  
}