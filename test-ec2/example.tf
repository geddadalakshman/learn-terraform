resource "aws_instance" "test_instance" {
  ami           = "ami-05ffe3c48a9991133"  # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TestInstance"
  }
  
}