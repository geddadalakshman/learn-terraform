output "instance_ips" {
  value = [for k,v in aws_instance.terraform_instance: "${k} => ${v.public_ip}"]
}