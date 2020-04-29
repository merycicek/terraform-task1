provider "aws" {
  region = "us-east-2"
}
resource "aws_key_pair" "us-east-2-key-" {
  key_name   = "terraform-bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
resource "aws_security_group" "reviewclass" {
  name        = "reviewclass"
  description = "reviewclass"
  

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
}

resource "aws_instance" "reviewclass_web" {
    // count =5  // you can create 5 instance by typing 'count ='
  ami           = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

 
}
resource "aws_route53_record" "www" {
  zone_id = "Z02550487Q5F0WF6SP6V"
  name    = "www.pacikamerycicek.com"
  type    = "A"
  ttl     = "5"
  // [ ]  bracket means list
  records = ["${aws_instance.reviewclass_web.public_ip}"]
}   // which instance you connect with, and instance name you give it in resource, and public ip you need to put. record like in route53 hosted zone record.