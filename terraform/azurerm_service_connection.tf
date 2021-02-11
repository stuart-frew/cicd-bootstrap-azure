
# The service connection to allow DevOps pipelines to manipulate Azure, not to run the terraform scripts
resource azuredevops_serviceendpoint_azurerm azurerm_service_connection {
  depends_on                = [azuredevops_project.project]
  project_id                = var.project_name
  service_endpoint_name     = "AzureResourceManagerEndpoint"
  azurerm_spn_tenantid      = var.tenant_id
  azurerm_subscription_id   = var.subscription_id
  azurerm_subscription_name = var.subscription_name
}

