resource "aws_volume_attachment" "goodmorning1" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_volume_attachment.goodmorning1.id}"
  instance_id = "ami-0d6621c01e8c2de2c"
  availability_zone = "us-west-2a"
  size              = 100
}