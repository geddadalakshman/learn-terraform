data "aws_ami" "my_ami" {
  most_recent = true
  owners = ["207567781479"] # Amazon
}


resource "aws_instance" "test-instance" {
    ami           = data.aws_ami.my_ami.id
    instance_type = var.instance_type
    vpc_security_group_ids = [var.security_group_id]

    tags = {
        Name = var.name
    }
}

resource "null_resource" "provisioner-block" {
  provisioner "remote-exec" {
    connection {
      
      host        = aws_instance.test-instance.public_ip
      user        = "student"
      password    = "Devops123"
    }

    inline = [
      "sudo yum install git -y",
      "git clone https://github.com/lakshmangeddada/roboshop-shell.git",
      "cd roboshop-shell",
      "sudo bash ${var.name}.sh"
    ]    
  }
}

output "private_ip" {
  value = aws_instance.test-instance.private_ip
}

