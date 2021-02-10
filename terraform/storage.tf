# Storage for keeping terraform state.
# Due the chicken and eggness of this process the boot strap state is not stored in azure
resource "azurerm_resource_group" "terraform_state" {
  name     = "${local.id}-terraform_state"
  location = var.location
}

resource "azurerm_storage_account" "terraform_state" {
  name                     = lower(substr(replace("${local.id}terraformstate", "/\\W/",""),0,23))
  resource_group_name      = azurerm_resource_group.terraform_state.name
  location                 = azurerm_resource_group.terraform_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraform_state" {
  name                  = replace(lower(var.project_name), "/\\W/", "-")
  storage_account_name  = azurerm_storage_account.terraform_state.name
  container_access_type = "private"
}
