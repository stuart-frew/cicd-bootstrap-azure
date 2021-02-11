resource "azuredevops_variable_group" "access_tokens" {
  project_id   = azuredevops_project.project.id
  name         = "AccessTokens"
  description  = "Authorisation tokens for accessing services"
  allow_access = true

  variable {
    name       = "DevopsPersonalAccessToken"
    value      = var.devops_personal_access_token
    is_secret  = true
  }
  variable {
    name       = "GitHubPersonalAccessToken"
    value      = var.github_personal_access_token
    is_secret  = true
  }
}

resource "azuredevops_variable_group" "service_connections" {
  project_id   = azuredevops_project.project.id
  name         = "ServiceConnections"
  description  = "Service connects used by the pipelines"
  allow_access = true

  variable {
    name       = "AzureServiceConnectionUUID"
    value      = azuredevops_serviceendpoint_azurerm.azurerm_service_connection.id
  }
  variable {
    name       = "AzureServiceConnection"
    value      = azuredevops_serviceendpoint_azurerm.azurerm_service_connection.service_endpoint_name
  }
  variable {
    name       = "GitHubServiceConnection"
    value      = azuredevops_serviceendpoint_github.github_service_connection.service_endpoint_name
  }  
  variable {
    name       = "GitHubServiceConnectionUUID"
    value      = azuredevops_serviceendpoint_github.github_service_connection.id
  }  
}

resource "azuredevops_variable_group" "azure_defaults" {
  project_id   = azuredevops_project.project.id
  name         = "AzureDefaults"
  description  = "Defaults values for various Azure values, i.e. location"
  allow_access = true

  variable {
    name       = "DefaultAzureLocation"
    value      = var.location
  }
  variable {
    name       = "DevOpsUrl"
    value      = var.devops_url
  }
}

resource "azuredevops_variable_group" "github_defaults" {
  project_id   = azuredevops_project.project.id
  name         = "GitHubDefaults"
  description  = "Defaults values for various GitHub values, i.e. organisation"
  allow_access = true

  variable {
    name       = "GitHubOrganisation"
    value      = var.github_organisation
  }
}

