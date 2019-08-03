resource "aws_instance" "web1" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = ""
    security_groups = ""
    vpc_security_group_ids = ["${aws_security_group.associate_public_id}"]
    associate_public_ip_address = "true"
    user_data = "${file("user_data.sh")}"
    

    tags = {
      Name       = "${var.Name}"
      Env        = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept       = "${var.Dept}"
  
}
}