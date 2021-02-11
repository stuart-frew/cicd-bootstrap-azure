resource "azuredevops_build_definition" "pipeline" {
  project_id = var.project_name
  name       = var.initialisation_repository_name
  path       = "\\Initialisation\\Setup repository"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type               = "GitHub"
    service_connection_id   = azuredevops_serviceendpoint_github.github_service_connection.id
    repo_id                 = "${var.github_organisation}/${var.initialisation_repository_name}"
    branch_name             = "main"
    yml_path                = "azure-pipelines.yml"
  }
}

