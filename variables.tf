# --- Terraform_projects/ECS_Dockerimage_Terraform/variables.tf ---

variable "region" {
  description   = "region to use for AWS resources"
  type          = string
  default       = "us-east-1"
}

variable "region_a" {
  description   = "The region the environment is going to be installed into"
  type          = string
  default       = "us-east-1a"
}
variable "region_b" {
  description   = "The region the environment is going to be installed into"
  type          = string
  default       = "us-east-1b"
}

variable "access_key" {
  type          = string
  sensitive     = true
}

variable "secret_access_key" {
  type          = string
  sensitive     = true
}