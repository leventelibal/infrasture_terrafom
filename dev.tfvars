Name       = "wordpress"
Env        = "Dev"
Created_by = "Levent"
Dept       = "IT"
ami        = "ami-0b898040803850657"
instance_type = "t2.micro"
key_name   = "terraform-key"
user_data  = "userdata.sh"
region     ="us-east-1"
appname    ="wordpress"
min_size   = 6
max_size   = 128
desired_capacity  = 6
    
