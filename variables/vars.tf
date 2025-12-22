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
variable "test-var-tfvars" {}

output "test-var-tfvars-output" {
    value = var.test-var-tfvars
}