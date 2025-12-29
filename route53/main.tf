terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"

}

resource "aws_route53_zone" "dev" {
  name = "devops71.online"

  tags = {
    Environment = "dev"
  }
}

# resource "aws_route53_record" "test-record" {
#   zone_id = aws_route53_zone.dev.zone_id
#   name    = "frontend.devops71.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_eip.lb.public_ip]
# }