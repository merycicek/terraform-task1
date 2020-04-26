resource "aws_volume_attachment" "myvolume" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.myvolume.id}"
  instance_id = "${aws_instance.web.id}"
}
