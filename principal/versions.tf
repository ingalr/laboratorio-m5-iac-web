terraform {
  required_version = ">= 1.12.0, < 1.13.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9.0"
    }
  }
}
