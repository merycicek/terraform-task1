resource "aws_volume_attacment" "web" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.myexample.id}"
  instance_id = "${aws_instance.web.id}"
}
resource "aws_ebs_volume" "myexample" {
  availability_zone = "us-west-2a"
  size              = 100
}