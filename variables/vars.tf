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
variable "test-var-cli-1" {}
output "test-var-cli-1-output" {
    value = var.test-var-cli-1
}