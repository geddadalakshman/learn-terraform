terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }

  backend "s3" {
  bucket         = "backend-tf-bucket369"  # Ensure this matches the bucket created in backend-s3-bucket/main.tf
  key            = "backend-s3/terraform.tfstate"
  region         = "us-east-1"
  encrypt        = true
}
}

provider "aws" {
  # Configuration options
    region = "us-east-1"

}



