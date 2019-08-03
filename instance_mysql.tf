resource "aws_instance" "mysql" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "${aws_subnet.private.id}"
    vpc_security_group_ids = ["${aws_security_group.privateDB.id}"]
    user_data = "${file("user_data.sh")}"
    

    tags = {
      Name       = "${var.Name}.MYSQL"
      Env        = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept       = "${var.Dept}"
  
}
}