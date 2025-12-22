variable "test-var" {
    default = "test-value"
}

output "test-var-output" {
    value = var.test-var
}
