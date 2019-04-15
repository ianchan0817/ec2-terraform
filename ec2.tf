provider "aws" {
  version                 = "~> 2.0"
  region                  = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-shopline-test-com"
    key    = "ianchan/terraform.tfstate"
    region = "ap-southeast-1"
  }
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id     = "${aws_vpc.default.id}"

  tags = {
    Name = "Ian Test"
  }
}

