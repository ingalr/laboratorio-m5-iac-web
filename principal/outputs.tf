output "generated_files" {
  description = "Archivo administrado por cada sitio."
  value = {
    for code, item in local_file.site_config : code => item.filename
  }
}

output "site_ids" {
  description = "Identificadores que el provider registra en state."
  value = {
    for code, item in local_file.site_config : code => item.id
  }
}

output "policy_summary" {
  description = "Resumen de la política usada por los archivos."
  value       = terraform_data.policy.output
}
