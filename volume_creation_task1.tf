resource "aws_ebs_volume" "myvolume" {
  availability_zone = "us-west-2a"
  size              = 100

  tags = {
    Name = "HelloWorld1"
  }
}