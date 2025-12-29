variable "ec2_instance" {
    default = {
        frontend = {
            name = "frontend"
            instance_type = "t2.micro"
        }

        catalogue = {
            name = "catalogue"
            instance_type = "t2.small"
        }
    }
}