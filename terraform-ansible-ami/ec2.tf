resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ami.id
  instance_type = "${var.ec2_class}"
  key_name  = "${var.key_pair}"
  subnet_id = "${var.subnet_1a}"
  vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]

  tags = {
    Name = "${var.product}.${var.environment}-ec2"
  }
}
