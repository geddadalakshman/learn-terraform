variable "ami" {
  default = "ami-068c0051b15cdb816"  # Amazon Linux 2 AMI (HVM), SSD Volume Type
}

variable "instance_type" {
  default = "t2.micro"
}


####variables provided as an key value pair for loop####
# variable "instance_count" {
#   default = 2
# }

# variable "instance-name" {
#     default = "Terraform-Instance"
# }

#variable provided as a list of instances for loop##
# variable "intances_names" {
#     type    = list(string)
#     default = ["instance1", "instance2", "instance3"]
# }

##variable provided as a map of instances for loop##
variable "instances" {

    default = {
        instance1 = {
            name = "instance1",
            type = "t2.micro"
        }
        instance2 = {
            name = "instance2",
            type = "t2.small"
        }
        instance3 = {
            name = "instance3",
            type = "t2.medium"
        }
    }
}
