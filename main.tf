terraform {
	required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.16"
}
}
required_version = ">= 1.0.7"
}

provider "aws" {
	region = "us-west-2"

}

resource "aws_instance" "my_ec2_instance" {
	count = 5
	ami = "ami-08f7912c15ca96832"
	instance_type = "t2.micro"
	tags = {
		Name = "Terraform_sahil"
}
}

output "ec2_public_ips" {
	value = aws_instance.my_ec2_instance[*].public_ip
}
