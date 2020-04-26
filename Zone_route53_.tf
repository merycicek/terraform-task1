resource "aws_route53_zone" "mymain" {
  name = "yourdomain.com"
  vpc {
    vpc_id = "vpc-007235786ca81350c"
  }
}

resource "aws_route53_zone" "yourdomain" {
  name = "www.yourdomain.com"

  tags = {
    Environment = "yourdomain"
  }
}

resource "aws_route53_record" "yourdomain-ns" {
  zone_id = "${aws_route53_zone.mymain.zone_id}"
  name    = "yourdomain.merycicek.com"
  type    = "NS"
  ttl     = "30"

  records = [
    "${aws_route53_zone.yourdomain.name_servers.0}",
    "${aws_route53_zone.yourdomain.name_servers.1}",
    "${aws_route53_zone.yourdomain.name_servers.2}",
    "${aws_route53_zone.yourdomain.name_servers.3}",
  ]
}