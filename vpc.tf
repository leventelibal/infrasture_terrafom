resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

tags = {
    Name = "${var.Name}"
    Env = "${var.Env}"
    Created by = "${var.Created by}"
    Dept = "${var.Dept}"
}