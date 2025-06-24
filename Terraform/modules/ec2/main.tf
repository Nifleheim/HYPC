provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "sydney" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  user_data              = var.user_data

  tags = merge({
    Name        = var.instance_name
    Terraform   = "true"
    Environment = terraform.workspace
  }, var.additional_tags)

  lifecycle {
    create_before_destroy = true
  }
}