resource "aws_key_pair" "us-west-2-key-1" {
  key_name   = "terraform-bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
