terraform {
  required_version = ">= 1.12.0, < 1.13.0"
}

import {
  to = terraform_data.legacy_site
  id = "CTG-EDGE-LEGACY-01"
}
