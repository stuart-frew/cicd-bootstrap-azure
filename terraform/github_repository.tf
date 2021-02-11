resource "github_repository" "basic_template" {
  name        = "basic-template"
  description = "The template repository of last resort"
  # This is public to allow for branch protections
  visibility  = "public"
  is_template = "true"
  auto_init = "true"
  topics = [
    "template"
  ]
  vulnerability_alerts = "true"

}

resource "github_branch_protection" "basic_template" {

  repository_id = github_repository.basic_template.node_id

  pattern          = "main"
  enforce_admins   = true

  required_status_checks {
    strict   = false
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
  }

}
