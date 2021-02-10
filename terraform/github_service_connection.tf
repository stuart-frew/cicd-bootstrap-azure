resource azuredevops_serviceendpoint_github github_service_connection {
  depends_on                = [azuredevops_project.project]
  project_id                = var.project_name
  service_endpoint_name     = "${var.github_organisation} endpoint"
  auth_personal {
    personal_access_token   = var.github_personal_access_token
  }
}
