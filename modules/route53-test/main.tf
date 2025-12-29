data "aws_route53_zone" "dev" {
  name = "devops71.online"

}

resource "aws_route53_record" "test-record" {
  zone_id = data.aws_route53_zone.dev.zone_id
  name    = "${var.name}-dev.devops71.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "name" {}
variable "private_ip" {}


output "zone_id" {
  value = data.aws_route53_zone.dev.zone_id
}