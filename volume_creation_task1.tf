
resource "aws_ebs_volume" "web" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.web.id}"
  instance_id = "${aws_instance.web.id}"
  availability_zone = "us-west-2a"
  size              = 100
}