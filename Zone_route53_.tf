resource "aws_route53_zone" "mymain" {
  name = "merycicek.com"
}

resource "aws_route53_zone" "mydomain" {
  name = "mydomain.merycicek.com"

  tags = {
    Environment = "mydomain"
  }
}

resource "aws_route53_record" "mydomain-ns" {
  zone_id = "${aws_route53_zone.mymain.zone_id}"
  name    = "mydomain.merycicek.com"
  type    = "NS"
  ttl     = "30"

  records = [
    "${aws_route53_zone.mydomain.name_servers.0}",
    "${aws_route53_zone.mydomain.name_servers.1}",
    "${aws_route53_zone.mydomain.name_servers.2}",
    "${aws_route53_zone.mydomain.name_servers.3}",
  ]
}