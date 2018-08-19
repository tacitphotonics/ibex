provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "concourse" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "${var.key_name}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.concourse.id}"
}
