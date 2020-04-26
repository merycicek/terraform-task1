resource "aws_volume_attachment" "myvolume" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.myvolume.id}"
  instance_id = "${aws_instance.web.id}"
}

resource "aws_instance" "web" {
  ami               = "ami-0d6621c01e8c2de2c"
  availability_zone = "us-west-2a"
  instance_type     = "t2.large"

  tags = {
    Name = "HelloWorld1"
  }
}

resource "aws_ebs_volume" "myvolume" {
  availability_zone = "us-west-2a"
  size              = 100
}