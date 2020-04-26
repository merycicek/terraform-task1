resource "aws_key_pair" "us-west-2-key.tf" {
  key_name   = "terraform-bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"

  
}
