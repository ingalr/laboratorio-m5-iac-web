variable "environment" {
  description = "Entorno simulado para las configuraciones de sitio."
  type        = string
  default     = "lab"

  validation {
    condition     = contains(["lab", "qa", "prod"], var.environment)
    error_message = "environment debe ser lab, qa o prod."
  }
}

variable "site_codes" {
  description = "Sitios Edge simulados que deben tener una configuración administrada."
  type        = set(string)
  default     = ["BOG-EDGE-01", "MED-EDGE-01"]
}

variable "service_port" {
  description = "Puerto lógico del servicio simulado."
  type        = number
  default     = 8080

  validation {
    condition     = var.service_port >= 1024 && var.service_port <= 65535
    error_message = "service_port debe estar entre 1024 y 65535."
  }
}

variable "revision" {
  description = "Revisión declarada de la configuración."
  type        = number
  default     = 1
}
