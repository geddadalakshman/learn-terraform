resource "aws_instance" "terraform_instance" {
  ami           = "ami-068c0051b15cdb816"  # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExampleInstance"
  }
  
}