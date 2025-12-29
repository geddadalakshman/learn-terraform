# module "test" {
#     source = "./test"
# }


module "ec2-test" {
    for_each = var.ec2_instance
    source = "./ec2-test"

    instance_type = each.value["instance_type"]
    name = each.value["name"]
    security_group_id = module.sg-test.security_group_id
}



module "sg-test" {
    source = "./sg-test"
}

module "route53-test" {
    for_each = var.ec2_instance

    source = "./route53-test"
    name = each.value["name"]
    private_ip = module.ec2-test[each.key].private_ip
}


output "private_ip" {
  value = module.ec2-test
}

output "zone_id" {
  value = module.route53-test
}