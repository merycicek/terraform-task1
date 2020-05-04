# terraform-task1
TERRAFORM TASK 1

Create instance type of t2.large in oregon region with bastion hosts key attached to it.

Create 2 security groups: allows ssh-http-https

Attach those sec groups to instance. Use simple userdata for installing httpd on the instance. You can learn more about userdata from below link https://www.terraform.io/docs/providers/aws/r/instance.html

Create and attach 100G volume to that instance using the following documentation https://www.terraform.io/docs/providers/aws/r/volume_attachment.html

Using the below documentation, please create route53 record for www.YOURDOMAIN.com

it should have above instance IP address.

https://www.terraform.io/docs/providers/aws/r/route53_record.html

Note:we got issue about running dmain name in browser. it is still same

Note 1: dont forget the refreshing aws pages after cresting something new Note 2: if you have subnet issue just delete default vpc and cereate another default from action menu, it will create all default subnet what you will have need
