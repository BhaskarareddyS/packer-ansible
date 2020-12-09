resource "aws_ebs_volume" "app-data" {
  availability_zone = "${var.zone}"
  size              = "${var.ebs_size}" 

  tags = {
    Name = "${var.environment}-app-data"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.app-data.id
  instance_id = aws_instance.ec2.id
}
