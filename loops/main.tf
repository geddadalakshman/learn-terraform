##############when using key/value pairs############
# resource "aws_instance" "terraform_instance" {
#   count = 3
#   ami           = var.ami  # Amazon Linux 2 AMI (HVM), SSD Volume Type
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance-name
#   }
  
# }


#############when using count variables#######
# resource "aws_instance" "terraform_instance" {
#   count = length(var.intances_names)
#   ami           = var.ami  # Amazon Linux 2 AMI (HVM), SSD Volume Type
#   instance_type = var.instance_type

#   tags = {
#     Name = var.intances_names[count.index]
#   }
  
# }


##############when using for_each, we need to use map or set of strings############
resource "aws_instance" "terraform_instance" {
#   count = length(var.intances_names)
  for_each = var.instances
  ami           = var.ami  # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = each.value.type

  tags = {
    Name = each.value.name
  }
  
}



