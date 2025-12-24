variable "test-var" {
    default = "test-value"
}

output "test-var-output" {
    value = var.test-var
}

# variable from .tfvars file
variable "test-var-tfvars" {}

output "test-var-tfvars-output" {
    value = var.test-var-tfvars
}

#variable from .auto.tfvars file
variable "test-var-tfvars-auto" {}

output "test-var-tfvars-output-auto" {
    value = var.test-var-tfvars-auto
}

#variables from command line
#terraform apply -var="test-var-cli-1=hello-from-cli-1"
variable "test-var-cli-1" {}
output "test-var-cli-1-output" {
    value = var.test-var-cli-1
}

#variables from a var-file
#terraform apply -var-file="variables/test.tfvars"
variable "env" {}
output "test-var-varfile-output1" {
    value = var.env
}

variable "terraform" {}
output "test-var-varfile-output2" {
    value = var.terraform
}
