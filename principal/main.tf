locals {
  normalized_sites = {
    for code in var.site_codes : code => lower(replace(code, "-", "_"))
  }
}

data "local_file" "as_is_inventory" {
  filename = "${path.module}/inputs/as_is_inventory.txt"
}

resource "terraform_data" "policy" {
  input = {
    environment      = var.environment
    service_port     = var.service_port
    inventory_sha256 = data.local_file.as_is_inventory.content_sha256
  }
}

resource "local_file" "site_config" {
  for_each = local.normalized_sites

  filename        = "${path.module}/generated/${each.value}.conf"
  file_permission = "0644"
  content         = <<-EOT
    site=${each.key}
    environment=${terraform_data.policy.output.environment}
    service_port=${terraform_data.policy.output.service_port}
    revision=${var.revision}
    managed_by=OpenTofu
    inventory_sha256=${terraform_data.policy.output.inventory_sha256}
  EOT
}
