resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c "
  instance_type = "t2.micro"


  key_name = "${aws_key_pair.us-west-2-key-1.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]


  tags = {
    Name = "HelloWorld1"
  }
}