resource "aws_instance" "test_instance" {
    count = tobool(var.instance_count) ? 2 : 0
    ami = var.ami
    instance_type = var.instance_type == "" ? "t2.micro" : var.instance_type

    tags = {
        Name = "TestInstance"
    }
}

