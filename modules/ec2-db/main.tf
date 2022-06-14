resource "aws_instance" "backend" {
  ami = var.instance_ami
  instance_type = var.instance_type
  key_name = var.instance_key
  vpc_security_group_ids = var.instance_security_group
  tags = var.instance_tags
}
