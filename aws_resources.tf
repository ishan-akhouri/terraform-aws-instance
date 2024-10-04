resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  subnet_id              = aws_subnet.public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.sg_my_server.id]
  user_data              = data.template_file.user_data.rendered

  tags = {
    Name = var.server_name
  }
}
