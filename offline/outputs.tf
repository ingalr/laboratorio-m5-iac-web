output "site_ids" {
  value = {
    for code, item in terraform_data.site_config : code => item.id
  }
}

output "site_configuration" {
  value = {
    for code, item in terraform_data.site_config : code => item.output
  }
}
