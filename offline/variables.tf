variable "environment" {
  type    = string
  default = "lab"
}

variable "site_codes" {
  type    = set(string)
  default = ["BOG-EDGE-01", "MED-EDGE-01"]
}

variable "service_port" {
  type    = number
  default = 8080
}

variable "revision" {
  type    = number
  default = 1
}
