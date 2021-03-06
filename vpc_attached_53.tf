# resource "aws_vpc" "primary" {
# cidr_block           = "10.6.0.0/16"
# enable_dns_hostnames = true
# enable_dns_support   = true
# }

# resource "aws_vpc" "secondary" {
# cidr_block           = "10.7.0.0/16"
# enable_dns_hostnames = true
# enable_dns_support   = true
# }

# resource "aws_route53_record" "web" {
#   zone_id = "${aws_route53_zone.web.zone_id}"
#   name    = "www.yourdomain.merycicek.com"
#   type    = "A"
#   ttl     = "300"
#   records = ["${aws_instance.web.public_ip}"]
# }resource "aws_route53_record" "www" {
#   zone_id = "${aws_route53_zone.primary.zone_id}"
#   name    = "merycicek.com"
#   type    = "A"

#   alias {
#     name                   = "${aws_elb.main.dns_name}"
#     zone_id                = "${aws_elb.main.zone_id}"
#     evaluate_target_health = true
#   }
# }

# NOTE: The aws_route53_zone vpc argument accepts multiple configuration
#       blocks. The below usage of the single vpc configuration, the
#       lifecycle configuration, and the aws_route53_zone_association
#       resource is for illustrative purposes (e.g. for a separate
#       cross-account authorization process, which is not shown here).
# vpc {
# vpc_id = "${aws_vpc.primary.id}"
# }


# lifecycle {
# ignore_changes = ["vpc"]
# }


# resource "aws_route53_zone_association" "secondary" {
#   zone_id = "${aws_route53_zone.mymain.zone_id}"
#   vpc_id  = "${aws_vpc.secondary.id}"
# }

