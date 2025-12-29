resource "aws_security_group" "example-sg" {
    name        = "example-sg"
    description = "Example security group"
    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "example-sg"
    }
}

output "security_group_id" {
  value = aws_security_group.example-sg.id
}
