resource "terraform_data" "site_config" {
  for_each = var.site_codes

  input = {
    site         = each.key
    environment  = var.environment
    service_port = var.service_port
    revision     = var.revision
    managed_by   = "OpenTofu"
  }

  triggers_replace = var.revision
}
