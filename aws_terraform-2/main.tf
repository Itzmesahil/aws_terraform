terraform {
required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.16"

}
}
	required_version = ">= 0.15.0"

}

provider "aws" {
region = "us-west-2"
}
resource "aws_instance" "aws_ec2_test" {
	count = 4
	ami = "ami-08f7912c15ca96832"
	instance_type = "t2.micro"
	tags = {
	Name = "TerraformTest- ${count.index}"
}
}
