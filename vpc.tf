resource "aws_vpc" "default" {
  cidr_block = "${var.cidr}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  tags {
      Name = "${var.vpc_tags}"
  }
}