resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  


  key_name = "${aws_key_pair.us-west-2-key-1.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = << EOF
        #! /bin/bash
                sudo apt-get update
        sudo apt-get install -y apache2
        sudo systemctl start apache2
        sudo systemctl enable apache2
        echo "<h1>Deployed via MERYEM Terraform</h1>" | sudo tee /var/www/html/index.html
    EOF



  tags = {
    Name = "HelloWorld1"
  }
}