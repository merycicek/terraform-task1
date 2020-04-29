provider "aws" {
  region = "us-east-2"
}
resource "aws_key_pair" "us-east-2-key-" {
  key_name   = "terraform-bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
