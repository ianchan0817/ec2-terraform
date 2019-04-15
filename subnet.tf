# #172.31.0.1 - 172.31.3.255
# resource "aws_subnet" "subnet_for_db_a" {
#     vpc_id  = "${aws_vpc.default.id}"
#     cidr_block = "172.31.0.0/22"
#     availability_zone = "ap-southeast-1a"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "Database"
#     }
# }

# #172.31.0.1 - 172.31.3.255
# resource "aws_subnet" "subnet_for_db_b" {
#     vpc_id  = "${aws_vpc.default.id}"
#     cidr_block = "172.31.4.0/22"
#     availability_zone = "ap-southeast-1b"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "Database"
#     }
# }

resource "aws_subnet" "subnet_for_app_a" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "172.31.8.0/22"
    availability_zone = "ap-southeast-1a"
    map_public_ip_on_launch = true
    tags {
        Name = "Applications"
    }
}

resource "aws_subnet" "subnet_for_app_b" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "172.31.12.0/22"
    availability_zone = "ap-southeast-1b"
    map_public_ip_on_launch = true
    tags {
        Name = "Applications"
    }
}

# resource "aws_subnet" "subnet_for_lb_a" {
#     vpc_id = "${aws_vpc.default.id}"
#     cidr_block = "172.31.16.0/22"
#     availability_zone = "ap-southeast-1a"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "LoadBalancers"
#     }
# }

# resource "aws_subnet" "subnet_for_lb_b" {
#     vpc_id = "${aws_vpc.default.id}"
#     cidr_block = "172.31.20.0/22"
#     availability_zone = "ap-southeast-1b"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "LoadBalancers"
#     }
# }

# #172.31.255.0 - 172.31.255.3
# resource "aws_subnet" "subnet_for_bhost_a" {
#     vpc_id = "${aws_vpc.default.id}"
#     cidr_block = "172.31.255.0/30"
#     availability_zone = "ap-southeast-1a"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "Bastion"
#     }
# }

# #172.31.255.4- 172.31.255.7
# resource "aws_subnet" "subnet_for_bhost_b" {
#     vpc_id = "${aws_vpc.default.id}"
#     cidr_block = "172.31.255.4/30"
#     availability_zone = "ap-southeast-1b"
#     map_public_ip_on_launch = true
#     tags {
#         Name = "Bastion"
#     }
# }