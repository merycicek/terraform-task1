resource "aws_volume_attachment" "volue_task1" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_volume_attachment.volue_task1.id}"
  instance_id = "${aws_instance.web.id}"
}

resource "aws_instance" "web" {
  ami               = "ami-21f78e11"
  availability_zone = "us-west-2a"
  instance_type     = "t2.large"

  tags = {
    Name = "HelloWorld1"
  }
}

resource "aws_volume_attachment" "volue_task1" {
  availability_zone = "us-west-2a"
  size              = 100
}