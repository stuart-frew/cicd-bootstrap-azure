resource "random_id" "common-id" {

  byte_length = 4
  prefix = var.prefix
}

resource "random_pet" "common-name" {
  keepers = {
    # Generate a new ID only when a new name, and by implication rg name
    resource_group = var.prefix
  }
}

locals {
  id = "${var.prefix}-${random_pet.common-name.id}"
}